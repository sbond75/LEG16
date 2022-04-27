#include <stdint.h>
#include <assert.h>
#include <stdio.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <inttypes.h>

#include "tools.h"

// https://stackoverflow.com/questions/3437404/min-and-max-in-c
#define max(a,b)             \
({                           \
    __typeof__ (a) _a = (a); \
    __typeof__ (b) _b = (b); \
    _a > _b ? _a : _b;       \
})
#define min(a,b)             \
({                           \
    __typeof__ (a) _a = (a); \
    __typeof__ (b) _b = (b); \
    _a < _b ? _a : _b;       \
})

#define MEMORY_SIZE UINT16_MAX
typedef unsigned Bit;
typedef uint16_t MemoryPointingRegister; // A register that points at memory. (These registers can theoretically be only 8 bits instead of 16 in order to address more memory with each increment in address being another 16-bit jump in memory.)
unsigned numGPRegs = 16; // Number of general-purpose registers

struct Flags {
  // Each of these member variables are bits.
  unsigned carryFlag: 1;
  unsigned zeroFlag: 1;
  unsigned signedCarryFlag: 1;
  unsigned negativeFlag: 1;
};

enum Mnemonic: unsigned {
  addi=0b0000,
  subi=0b1010,
  add=0b0111,
  sub=0b1011,
  xor=0b1100,
  and=0b1101,
  or=0b1110,
  sh=0b0110,
  set=0b0010,
  br=0b1000,
  brdnz=0b0001,
  call=0b1111,
  jmp=0b1001,
  ldi=0b0100,
  str=0b0101,
  ldr=0b0011,
};

enum Condition: unsigned {
  sgz=0b0000,
  slz=0b0001,
  nz=0b0010,
  z=0b0011,
  cu=0b0100,
  cs=0b0101,
};

struct Instruction {
  enum Mnemonic mnemonic: 4; // 4 bits for this
  union {
    unsigned registerSelect: 4;
    enum Condition condition: 4;
    union {
      struct {
	union {
	  unsigned registerSelect2: 4;
	  unsigned immediate: 8;
	};
	union {
	  unsigned registerSelect3: 4;
	  struct {
	    unsigned unused: 3;
	    unsigned extraOperation: 1;
	  };
	};
      };
    };
  };
};

struct MemoryCell {
  union {
    union {
      uint16_t data;
      struct {
	uint8_t data_lsbyte;
	uint8_t data_msbyte;
      };
    };
    struct Instruction instr;
    struct {
      unsigned bit_0: 1; // LSB for little-endian
      unsigned bit_1: 1;
      unsigned bit_2: 1;
      unsigned bit_3: 1;
      unsigned bit_4: 1;
      unsigned bit_5: 1;
      unsigned bit_6: 1;
      unsigned bit_7: 1;
      unsigned bit_8: 1;
      unsigned bit_9: 1;
      unsigned bit_10: 1;
      unsigned bit_11: 1;
      unsigned bit_12: 1;
      unsigned bit_13: 1;
      unsigned bit_14: 1;
      unsigned bit_15: 1; // MSB for little-endian
      /* unsigned bit_16: 1; */
      /* unsigned bit_17: 1; */
      /* unsigned bit_18: 1; */
      /* unsigned bit_19: 1; */
      /* unsigned bit_20: 1; */
      /* unsigned bit_21: 1; */
      /* unsigned bit_22: 1; */
      /* unsigned bit_23: 1; */
      /* unsigned bit_24: 1; */
      /* unsigned bit_25: 1; */
      /* unsigned bit_26: 1; */
      /* unsigned bit_27: 1; */
      /* unsigned bit_28: 1; */
      /* unsigned bit_29: 1; */
      /* unsigned bit_30: 1; */
      /* unsigned bit_31: 1; */
    };
  };
};

struct MemoryCell memoryCellFromImmediate(unsigned immediate) {
  struct MemoryCell mc = {.data=immediate};
  return mc;
}

void updateFlagsForAdd(struct MemoryCell prev, struct MemoryCell arg1, struct MemoryCell arg2, struct MemoryCell* res, struct Instruction instr, struct MemoryCell memory[MEMORY_SIZE], struct Flags* flags) {
  // Unsigned overflow (carry)
  flags->carryFlag = (res->data < min(arg1.data, arg2.data));// || (res->data == prev.data && instr.immediate != 0);
  // Zero flag
  flags->zeroFlag = res->data == 0;
  // Signed carry flag
  flags->signedCarryFlag = arg1.bit_15 == arg2.bit_15 && res->bit_15 != arg1.bit_15/*arg1 or arg2 are the same at this point and we check if one of them is the opposite of res's bit 15*/; // A XNOR B XNOR (NOT C) where A and B are the sign bits of the two numbers being added, and C is the sign bit of the resulting number.
  // Negative flag
  flags->negativeFlag = res->bit_15 == 1; //res->data < 0;
  assert((res->bit_15 == 1) == (res->data < 0));
}
void updateFlagsForSub(struct MemoryCell prev, struct MemoryCell arg1, struct MemoryCell arg2, struct MemoryCell* res, struct Instruction instr, struct MemoryCell memory[MEMORY_SIZE], struct Flags* flags) {
  updateFlagsForAdd(prev, arg1, arg2, res, instr, memory, flags);
}
void updateFlagsForXor(struct MemoryCell prev, struct MemoryCell arg1, struct MemoryCell arg2, struct MemoryCell* res, struct Instruction instr, struct MemoryCell memory[MEMORY_SIZE], struct Flags* flags) {
  // Zero flag
  flags->zeroFlag = res->data == 0;
  // Negative flag
  flags->negativeFlag = res->bit_15 == 1; //res->data < 0;
  assert((res->bit_15 == 1) == (res->data < 0));
}
void updateFlagsForAnd(struct MemoryCell prev, struct MemoryCell arg1, struct MemoryCell arg2, struct MemoryCell* res, struct Instruction instr, struct MemoryCell memory[MEMORY_SIZE], struct Flags* flags) {
  updateFlagsForXor(prev, arg1, arg2, res, instr, memory, flags);
}
void updateFlagsForOr(struct MemoryCell prev, struct MemoryCell arg1, struct MemoryCell arg2, struct MemoryCell* res, struct Instruction instr, struct MemoryCell memory[MEMORY_SIZE], struct Flags* flags) {
  updateFlagsForXor(prev, arg1, arg2, res, instr, memory, flags);
}
void updateFlagsForSh(struct MemoryCell prev, struct MemoryCell arg1, struct MemoryCell arg2, struct MemoryCell* res, struct Instruction instr, struct MemoryCell memory[MEMORY_SIZE], struct Flags* flags) {
  updateFlagsForXor(prev, arg1, arg2, res, instr, memory, flags);
}
void updateFlagsForSet(struct MemoryCell prev, struct MemoryCell arg1, struct MemoryCell arg2, struct MemoryCell* res, struct Instruction instr, struct MemoryCell memory[MEMORY_SIZE], struct Flags* flags) {
  updateFlagsForXor(prev, arg1, arg2, res, instr, memory, flags);
}
void doJump(MemoryPointingRegister* PC, const MemoryPointingRegister* dest, bool* out_overrodePC) {
  *PC = *dest;
  *out_overrodePC = true;
}
void pushP(MemoryPointingRegister r, MemoryPointingRegister* SP, struct MemoryCell memory[MEMORY_SIZE]) {
  *SP = r;
  SP += sizeof(MemoryPointingRegister);
}
void pushC(struct MemoryCell c, MemoryPointingRegister* SP, struct MemoryCell memory[MEMORY_SIZE]) {
  *SP = c.data;
  SP += sizeof(MemoryPointingRegister);
}

void runOneIter(MemoryPointingRegister* PC, MemoryPointingRegister* SP, struct Instruction instr, struct MemoryCell memory[UINT16_MAX], struct Flags* flags, bool* out_overrodePC) {
  struct MemoryCell prev, *dest;
  bool doBr = false; // Whether to branch in a branch instruction
  bool spRelative = false;
  switch (instr.mnemonic) {
  case addi:
    prev = memory[instr.registerSelect];
    memory[instr.registerSelect].data += instr.immediate;
    updateFlagsForAdd(prev, prev, memoryCellFromImmediate(instr.immediate), &memory[instr.registerSelect], instr, memory, flags);
    break;
  case subi:
    prev = memory[instr.registerSelect];
    memory[instr.registerSelect].data -= instr.immediate;
    updateFlagsForSub(prev, prev, memoryCellFromImmediate(instr.immediate), &memory[instr.registerSelect], instr, memory, flags);
    break;
  case add:
    prev = memory[instr.registerSelect3];
    memory[instr.registerSelect3].data = memory[instr.registerSelect].data + memory[instr.registerSelect2].data;
    updateFlagsForAdd(prev, memory[instr.registerSelect], memory[instr.registerSelect2], &memory[instr.registerSelect3], instr, memory, flags);
    break;
  case sub:
    prev = memory[instr.registerSelect3];
    memory[instr.registerSelect3].data = memory[instr.registerSelect].data - memory[instr.registerSelect2].data;
    updateFlagsForSub(prev, memory[instr.registerSelect], memory[instr.registerSelect2], &memory[instr.registerSelect3], instr, memory, flags);
    break;
  case xor:
    prev = memory[instr.registerSelect3];
    memory[instr.registerSelect3].data = memory[instr.registerSelect].data ^ memory[instr.registerSelect2].data;
    updateFlagsForXor(prev, memory[instr.registerSelect], memory[instr.registerSelect2], &memory[instr.registerSelect3], instr, memory, flags);
    break;
  case and:
    prev = memory[instr.registerSelect3];
    memory[instr.registerSelect3].data = memory[instr.registerSelect].data & memory[instr.registerSelect2].data;
    updateFlagsForAnd(prev, memory[instr.registerSelect], memory[instr.registerSelect2], &memory[instr.registerSelect3], instr, memory, flags);
    break;
  case or:
    prev = memory[instr.registerSelect3];
    memory[instr.registerSelect3].data = memory[instr.registerSelect].data | memory[instr.registerSelect2].data;
    updateFlagsForOr(prev, memory[instr.registerSelect], memory[instr.registerSelect2], &memory[instr.registerSelect3], instr, memory, flags);
    break;
  case sh:
    prev = memory[instr.registerSelect3];
    memory[instr.registerSelect3].data = instr.immediate > 0 ? memory[instr.registerSelect].data >> memory[instr.immediate].data : memory[instr.registerSelect].data << -memory[instr.immediate].data;
    updateFlagsForSh(prev, memory[instr.registerSelect], memory[instr.registerSelect2], &memory[instr.registerSelect3], instr, memory, flags);
    break;
  case set:
    memory[instr.registerSelect].data = instr.extraOperation == 1 ? -memory[instr.registerSelect2].data : memory[instr.registerSelect2].data;
    break;
  case br:
    switch (instr.condition) {
    case sgz:
      doBr = (!flags->negativeFlag && !flags->zeroFlag);
      break;
    case slz:
      doBr = (flags->negativeFlag);
      break;
    case nz:
      doBr = (!flags->zeroFlag);
      break;
    case z:
      doBr = (flags->zeroFlag);
      break;
    case cu:
      doBr = (flags->carryFlag);
      break;
    case cs:
      doBr = (flags->signedCarryFlag);
      break;
    }
    if (doBr) {
      doJump(PC, (PC+instr.immediate), out_overrodePC);
    }
    break;
  case brdnz:
    doBr = (memory[instr.registerSelect].data != 0);
    if (doBr) {
      memory[instr.registerSelect].data -= 1;
      doJump(PC, PC+instr.immediate, out_overrodePC);
    }
    break;
  case call:
    dest = &memory[instr.registerSelect];
    // dest points at the thing containing the address to jump to. *dest or dest->data points at the thing to jump to.
    if (dest->data > MEMORY_SIZE) {
      fprintf(stderr, "Out of bounds call: %" PRIu16 "\n", dest->data);
      exit(1);
    }
    pushP(*PC, SP, memory); // Push a MemoryPointingRegister
    doJump(PC, (const MemoryPointingRegister *)memory+dest->data, out_overrodePC);
    break;
  case jmp:
    dest = &memory[instr.registerSelect];
    // dest points at the thing containing the address to jump to. *dest or dest->data points at the thing to jump to.
    if (dest->data > MEMORY_SIZE) {
      fprintf(stderr, "Out of bounds jmp: %" PRIu16 "\n", dest->data);
      exit(1);
    }
    doJump(PC, (const MemoryPointingRegister *)memory+dest->data, out_overrodePC);
    break;
  case ldi:
    memory[instr.registerSelect].data_lsbyte = instr.immediate;
    break;
  case str:
    dest = &memory[instr.registerSelect2];
    if (dest->data > MEMORY_SIZE) {
      fprintf(stderr, "Out of bounds str instruction: %" PRIu16 "\n", dest->data);
      exit(1);
    }
    spRelative = instr.extraOperation == 1;
    *(memory+(spRelative ? *SP : 0)+dest->data) = memory[instr.registerSelect];
    if (spRelative) {
      spRelative += sizeof(MemoryPointingRegister);
    }
    break;
  case ldr:
    dest = &memory[instr.registerSelect];
    if (dest->data > MEMORY_SIZE) {
      fprintf(stderr, "Out of bounds str instruction: %" PRIu16 "\n", dest->data);
      exit(1);
    }
    spRelative = instr.extraOperation == 1;
    *(memory+(spRelative ? *SP : 0)+dest->data) = memory[instr.registerSelect2];
    if (spRelative) {
      spRelative -= sizeof(MemoryPointingRegister);
    }
    break;
  }
}

int main() {
  // https://man7.org/linux/man-pages/man3/getline.3.html
  FILE *stream = stdin;
  char *line = NULL;
  size_t len = 0;
  ssize_t nread;
	   
  MemoryPointingRegister PC = {0};
  MemoryPointingRegister SP = {0};
  struct MemoryCell memory[MEMORY_SIZE] = {0};
  struct MemoryCell instr;
  struct Flags flags = {0};
  bool overrodePC;
  while ((nread = getline(&line, &len, stream)) != -1) {
    printf("PC: %" PRIu16 "\n", PC);
    if (PC > MEMORY_SIZE) {
      fprintf(stderr, "Out of bounds PC: %" PRIu16 "\n", PC);
      exit(1);
    }
    instr = memory[PC];
    runOneIter(&PC, &SP, instr.instr, memory, &flags, &overrodePC);
    DumpHex(memory, 64);
    if (!overrodePC) {
      PC += sizeof(MemoryPointingRegister);
    }
  }
  free(line);
  return 0;
}
