#include <stdint.h>
#include <assert.h>
#include <stdio.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <inttypes.h>
#include <limits.h>
#include <string.h>

#include "tools.h"
#include "nibble.h"

#ifdef __APPLE__
#include "endian.h"
#else
#define _BSD_SOURCE             /* See feature_test_macros(7) */
#include <endian.h>
#endif

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
const unsigned numGPRegs = 16; // Number of general-purpose registers

struct Flags {
  // Each of these member variables are bits.
  unsigned carryFlag: 1; // 1
  unsigned zeroFlag: 1; // 2
  unsigned signedCarryFlag: 1; // 4
  unsigned negativeFlag: 1; // 8
};

enum Mnemonic: unsigned {
  addi=0b0000, // ✓
  subi=0b1010, // ✓
  add=0b0111, // ✓
  sub=0b1011, // ✓
  xor=0b1100, // ✓
  and=0b1101,
  or=0b1110,
  sh=0b0110, // ✓
  set=0b0010, // ✓
  br=0b1000,
  brdnz=0b0001,
  call=0b1111,
  jmp=0b1001,
  ldi=0b0100, // ✓
  str=0b0101,
  ldr=0b0011,
};

enum Condition: unsigned {
  none=0b0000, // ✓
  sgz=0b0001, // ✓
  slz=0b0010, // ✓
  nz=0b0011, // ✓
  z=0b0100, // ✓
  cu=0b0101, // ✓
  cs=0b0110, // ✓
};

// To force compiler to use 1 byte packaging
#pragma pack(1)
typedef uint8_t ImmediateType;
typedef int8_t SignedImmediateType;
// NOTE: this entire struct reads RIGHT (BOTTOM) to LEFT (TOP). the order is swapped essentially, due to endianness. (End of the struct is the start of the instruction)
struct Instruction {
  union {
    struct {
      unsigned extraOperation: 1;
      unsigned unused: 3;
      unsigned registerSelect2_: 4;
    };
    struct {
      unsigned registerSelect3: 4;
      unsigned registerSelect2: 4;
    };
    unsigned immediate: 8; // "also" has type ImmediateType

      //unsigned extraOperation: 4;
      // Bad: becomes size 1 byte:
      /* struct { */
      /*   unsigned unused: 3; */
      /*   unsigned extraOperation: 1; */
      /* }; */
  };
  union {
    struct {
      enum Condition condition: 4;
      enum Mnemonic mnemonic_: 4; // 4 bits for this
    };
    struct {
      unsigned registerSelect: 4;
      enum Mnemonic mnemonic: 4; // 4 bits for this
    };
  };
};

// maybe each element of a struct that's a struct or union must be at least 1 byte?
struct Test1 {
  unsigned registerSelect2_: 4;
  unsigned unused: 3;
  unsigned extraOperation: 1;
};

#pragma pack(1)
typedef uint16_t DataType;
struct MemoryCell {
  union {
    union {
      DataType data;
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
}; //__attribute__((aligned (16))); // https://stackoverflow.com/questions/11160551/c-struct-force-extra-padding
// "The second #pragma resets the pack value." ( https://stackoverflow.com/questions/24887459/c-c-struct-packing-not-working )
#pragma pack()

// https://codeforwin.org/2016/01/c-program-to-check-most-significant-bit-of-number-is-set-or-not.html
bool is_msb_set_forUInt8(uint8_t value) {
  // CHAR_BIT: "number of bits in a byte (macro constant)" ( https://en.cppreference.com/w/cpp/types/climits )
  return (1 << (sizeof(uint8_t)*CHAR_BIT - 1)) & value;
}

struct MemoryCell memoryCellFromImmediate(unsigned immediate) {
  struct MemoryCell mc = {.data=immediate};
  return mc;
}

void updateFlagsForAddAndSubCommon(struct MemoryCell prev, struct MemoryCell arg1, struct MemoryCell arg2, struct MemoryCell* res, struct Instruction instr, struct MemoryCell memory[MEMORY_SIZE], struct Flags* flags) {
  // Zero flag
  flags->zeroFlag = res->data == 0;
  // Signed carry flag
  printf("bit_15's: %d %d %d\n", arg1.bit_15, arg2.bit_15, res->bit_15);
  flags->signedCarryFlag = arg1.bit_15 == arg2.bit_15 && res->bit_15 != arg1.bit_15/*arg1 or arg2's bit 15 are the same at this point and we check if one of them is the opposite of res's bit 15*/; // A XNOR B XNOR (NOT C) where A and B are the sign bits of the two numbers being added, and C is the sign bit of the resulting number.
  // Negative flag
  flags->negativeFlag = res->bit_15 == 1; // Nvm: res->data < 0;
  // This is bad: assert((res->bit_15 == 1) == (res->data < 0));
}
void updateFlagsForAdd_internal(struct MemoryCell prev, struct MemoryCell arg1, struct MemoryCell arg2, struct MemoryCell* res, struct Instruction instr, struct MemoryCell memory[MEMORY_SIZE], struct Flags* flags) {
  // Unsigned overflow (carry)
  flags->carryFlag = (res->data < max(arg1.data, arg2.data));// || (res->data == prev.data && instr.immediate != 0);
}
void updateFlagsForAdd(struct MemoryCell prev, struct MemoryCell arg1, struct MemoryCell arg2, struct MemoryCell* res, struct Instruction instr, struct MemoryCell memory[MEMORY_SIZE], struct Flags* flags) {
  updateFlagsForAdd_internal(prev, arg1, arg2, res, instr, memory, flags);
  updateFlagsForAddAndSubCommon(prev, arg1, arg2, res, instr, memory, flags);
}
void updateFlagsForSub(struct MemoryCell prev, struct MemoryCell arg1, struct MemoryCell arg2, struct MemoryCell* res, struct Instruction instr, struct MemoryCell memory[MEMORY_SIZE], struct Flags* flags) {
  // Unsigned overflow (carry)
  flags->carryFlag = (res->data > min(arg1.data, arg2.data));// || (res->data == prev.data && instr.immediate != 0);
  
  updateFlagsForAddAndSubCommon(prev, arg1, arg2, res, instr, memory, flags);
}
void updateFlagsForXor(struct MemoryCell prev, struct MemoryCell arg1, struct MemoryCell arg2, struct MemoryCell* res, struct Instruction instr, struct MemoryCell memory[MEMORY_SIZE], struct Flags* flags) {
  // Reset other flags
  memset(flags, 0, sizeof(struct Flags));
  
  // Zero flag
  flags->zeroFlag = res->data == 0;
  // Negative flag
  printf("res: %" PRIu16 ", bit_15: %d\n", *res, res->bit_15);
  flags->negativeFlag = res->bit_15 == 1; // Nvm: res->data < 0;
  // This is bad: assert((res->bit_15 == 1) == (res->data < 0));
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
void doJump(MemoryPointingRegister* PC, MemoryPointingRegister dest // times 2
            , bool* out_overrodePC) {
  if (dest % sizeof(struct MemoryCell) != 0) {
    fprintf(stderr, "Destination for jump is not a multiple of %zu: %" PRIu16 "\n", sizeof(struct MemoryCell), dest);
    exit(1);
  }
  *PC = dest / 2;
  *out_overrodePC = true;
}
void pushP(MemoryPointingRegister r, MemoryPointingRegister* SP, struct MemoryCell memory[MEMORY_SIZE]) {
  memory[*SP] = memoryCellFromImmediate(r);
  *SP += 1;
}
void pushC(struct MemoryCell c, MemoryPointingRegister* SP, struct MemoryCell memory[MEMORY_SIZE]) {
  memory[*SP] = c;
  *SP += 1;
}

void runOneIter(MemoryPointingRegister* PC, MemoryPointingRegister* SP, struct Instruction instr, struct MemoryCell memory[UINT16_MAX], struct MemoryCell registers[numGPRegs], struct Flags* flags, bool* out_overrodePC) {
  struct MemoryCell prev, *dest, destMem;
  bool doBr = false; // Whether to branch in a branch instruction
  bool spRelative = false;
  ImmediateType imm;
  SignedImmediateType immSigned;
  printf("%" PRIu16 " ", instr.mnemonic);
  switch (instr.mnemonic) {
  case addi:
    prev = registers[instr.registerSelect];
    printf("%" PRIu16 " ", instr);
    printf("%" PRIu16 " ", instr.immediate);
    printf("%" PRIu16 "\n", instr.registerSelect);
    registers[instr.registerSelect].data += (instr.immediate);
    updateFlagsForAdd(prev, prev, memoryCellFromImmediate(instr.immediate), &registers[instr.registerSelect], instr, memory, flags);
    break;
  case subi:
    prev = registers[instr.registerSelect];
    registers[instr.registerSelect].data -= instr.immediate;
    updateFlagsForSub(prev, prev, memoryCellFromImmediate(-instr.immediate), &registers[instr.registerSelect], instr, memory, flags);
    break;
  case add:
    prev = memory[instr.registerSelect3];
    printf("reg1: %" PRIu16 "\n", registers[instr.registerSelect].data);
    printf("reg2: %" PRIu16 "\n", registers[instr.registerSelect2].data);
    registers[instr.registerSelect3].data = registers[instr.registerSelect].data + registers[instr.registerSelect2].data;
    updateFlagsForAdd(prev, registers[instr.registerSelect], registers[instr.registerSelect2], &registers[instr.registerSelect3], instr, memory, flags);
    break;
  case sub:
    prev = registers[instr.registerSelect3];
    registers[instr.registerSelect3].data = registers[instr.registerSelect].data - registers[instr.registerSelect2].data;
    updateFlagsForSub(prev, registers[instr.registerSelect], memoryCellFromImmediate(-(registers[instr.registerSelect2].data)), &registers[instr.registerSelect3], instr, memory, flags);
    break;
  case xor:
    prev = registers[instr.registerSelect3];
    registers[instr.registerSelect3].data = registers[instr.registerSelect].data ^ registers[instr.registerSelect2].data;
    updateFlagsForXor(prev, registers[instr.registerSelect], registers[instr.registerSelect2], &registers[instr.registerSelect3], instr, memory, flags);
    break;
  case and:
    prev = registers[instr.registerSelect3];
    registers[instr.registerSelect3].data = registers[instr.registerSelect].data & registers[instr.registerSelect2].data;
    updateFlagsForAnd(prev, registers[instr.registerSelect], registers[instr.registerSelect2], &registers[instr.registerSelect3], instr, memory, flags);
    break;
  case or:
    prev = registers[instr.registerSelect3];
    registers[instr.registerSelect3].data = registers[instr.registerSelect].data | registers[instr.registerSelect2].data;
    updateFlagsForOr(prev, registers[instr.registerSelect], registers[instr.registerSelect2], &registers[instr.registerSelect3], instr, memory, flags);
    break;
  case sh:
    imm = is_msb_set_forUInt8(instr.immediate) ? (~instr.immediate + 1 // two's complement
                                         ) : (DataType)instr.immediate;
    fprintf(stderr, "A: %d %" PRIu16 "\n", is_msb_set_forUInt8(instr.immediate), imm);
    if (imm > 8) {
      fprintf(stderr, "Too large of a shift in sh instruction: %" PRIu16 "\n", imm);
      exit(1);
    }
    registers[instr.registerSelect].data = is_msb_set_forUInt8(instr.immediate) ? registers[instr.registerSelect].data << imm : registers[instr.registerSelect].data >> imm;
    updateFlagsForSh(prev, registers[instr.registerSelect], registers[instr.registerSelect2], &registers[instr.registerSelect3], instr, memory, flags);
    break;
  case set:
    registers[instr.registerSelect].data = instr.extraOperation == 1 ? -registers[instr.registerSelect2].data : registers[instr.registerSelect2].data;
    break;
  case br:
    imm = is_msb_set_forUInt8(instr.immediate) ? (~instr.immediate + 1 // two's complement
                                                  ) : (DataType)instr.immediate;
    immSigned = (is_msb_set_forUInt8(instr.immediate) ? -imm : imm);
    switch (instr.condition) {
    case none:
      doBr = true;
      break;
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
      doJump(PC, (*PC+immSigned)*2, out_overrodePC);
    }
    break;
  case brdnz:
    doBr = (registers[instr.registerSelect].data != 0);
    if (doBr) {
      registers[instr.registerSelect].data -= 1;
      doJump(PC, (*PC+immSigned)*2, out_overrodePC);
    }
    break;
  case call:
    dest = &registers[instr.registerSelect];
    // dest points at the thing containing the address to jump to. *dest or dest->data points at the thing to jump to.
    if (dest->data > MEMORY_SIZE) {
      fprintf(stderr, "Out of bounds call: %" PRIu16 "\n", dest->data);
      exit(1);
    }
    pushP(*PC*2, SP, memory); // Push a MemoryPointingRegister
    doJump(PC, (MemoryPointingRegister)(dest->data), out_overrodePC);
    break;
  case jmp:
    dest = &registers[instr.registerSelect];
    // dest points at the thing containing the address to jump to. *dest or dest->data points at the thing to jump to.
    if (dest->data > MEMORY_SIZE) {
      fprintf(stderr, "Out of bounds jmp: %" PRIu16 "\n", dest->data);
      exit(1);
    }
    doJump(PC, (MemoryPointingRegister)(dest->data), out_overrodePC);
    break;
  case ldi:
    registers[instr.registerSelect].data_lsbyte = instr.immediate;
    break;
  case str:
    dest = &memory[instr.registerSelect2];
    destMem = memoryCellFromImmediate((spRelative ? *SP : 0)+(spRelative ? 0 : dest->data));
    if (destMem.data > MEMORY_SIZE) {
      fprintf(stderr, "Out of bounds str instruction: %" PRIu16 "\n", dest->data);
      exit(1);
    }
    // Check alignment
    if (destMem.data % sizeof(struct MemoryCell) != 0) {
      fprintf(stderr, "Destination for str is not a multiple of %zu: %" PRIu16 "\n", sizeof(struct MemoryCell), destMem);
      exit(1);
    }
    spRelative = instr.extraOperation == 1;
    printf("str instruction: %" PRIu16 " %" PRIu16 "\n", destMem, dest->data);
    memory[destMem.data/2] = registers[instr.registerSelect];
    if (spRelative) { // Post-increment
      *SP += 1;
    }
    break;
  case ldr:
    dest = &memory[instr.registerSelect2];
    spRelative = instr.extraOperation == 1;
    if (spRelative) { // Pre-decrement
      *SP -= 1;
    }
    destMem = memoryCellFromImmediate((spRelative ? *SP*2 : 0)+(spRelative ? 0 : dest->data));
    // Check alignment
    if (destMem.data % sizeof(struct MemoryCell) != 0) {
      fprintf(stderr, "Source for ldr is not a multiple of %zu: %" PRIu16 "\n", sizeof(struct MemoryCell), destMem);
      exit(1);
    }
    if (destMem.data > MEMORY_SIZE) {
      fprintf(stderr, "Out of bounds ldr instruction: %" PRIu16 "\n", dest->data);
      exit(1);
    }
    printf("ldr instruction: %" PRIu16 " %" PRIu16 " %" PRIu16 "\n", destMem, dest->data, memory[destMem.data/2]);
    registers[instr.registerSelect] = memory[destMem.data/2];
    break;
  }
}

//static_assert(sizeof(struct MemoryCell) == sizeof(uint16_t), "incorrect size");
//static_assert(sizeof(struct MemoryCell) >= sizeof(uint16_t), "incorrect size");

int main() {
  printf("%zu, %zu, %zu\n", sizeof(struct Instruction), sizeof(struct Test1), sizeof(struct MemoryCell));
  //printf("%zu\n", offsetof(struct Instruction, immediate)); // "error: cannot compute offset of bit-field 'immediate'"
  
  // https://man7.org/linux/man-pages/man3/getline.3.html
  FILE *stream = stdin;
  char *line = NULL;
  size_t len = 0;
  ssize_t nread;
	   
  MemoryPointingRegister PC = {0};
  MemoryPointingRegister SP = {MEMORY_SIZE/sizeof(struct MemoryCell) / 2}; // We initialize SP to halfway in the memory
  MemoryPointingRegister SP_orig = SP;
  struct MemoryCell memory[MEMORY_SIZE] //= {0};
    = {
    0b0000000011111111, // addi r0, 255
    0b1010000011111111, // subi r0, 255
    0b0111000100100011, // add r1, r2 into r3
    0b0000000010000000, // addi r0, 128
    0b0100000010011100, // ldi r0, 156
    0b0100000110011101, // ldi r1, 157
    0b0100001010011100, // ldi r2, 156
    0b0111000100100011, // add r1, r2 into r3
    0b1011001100010011, // sub r3, r1 into r3
    0b1011001100100011, // sub r3, r2 into r3
    // - r3 should be zero at this point. (PC=9 should show on the screen to check this)
    // - zero flag should be set at this point. (Flags=2)
    0b1100000100100011, // xor r1, r2 into r3
    // r3 should be 1 at this point (PC=10)
    // r0 should be 0x009C
    // r1 should be 0x009D
    // r2 should be 0x009C
    0b0110000100001000, // sh r1 right 8
    // r1 should be 0 (PC=11)
    // Flags should = 2
    0b0110001011111000, // sh r2 left 8
    // r2 should be 0x9C00 (PC=12)
    0b0110001011111000, // sh r2 left 8
    // r2 should be 0x0000 (PC=13)
    0b0100001001111011, // ldi r2, 123
    0b0010000100100000, // set r1 to r2
    // r1 should be 0x007B (PC=15)
    0b0010000100100001, // set r1 to -r2
    // r1 should be 0xFF85 (PC=16)
    0b1000000001100100, // br to 100
    // (PC=117)
    0b1101000100100011, // and r1, r2 into r3
    // r3 should be 1
    0b1110000100100011, // or r1, r2 into r3
    // r3 should be 0xFFFF (PC=19)
    // Note: as a signed two's complement number, 0xFFFF = -1
    0b1000000100001111, // brsgz to 15 // This shouldn't branch
    // (PC=20)
    0b1000001000000011, // brslz to 3 // This should branch
    // (PC=21)
    0b0000000010000000, // addi r0, 128 // This shouldn't execute
    // (PC=22)
    0b0000000010000000, // addi r0, 128 // This shouldn't execute
    // (PC=23)
    0b0000000000000010, // addi r0, 2 // This should execute
    // (PC=24)
    0b0111000100100011, // add r1, r2 into r3
    // (PC=25)
    0b1000010100000011, // brcu to 3 // This should branch
    // (PC=26)
    0b0000000010000000, // addi r0, 128 // This shouldn't execute
    // (PC=27)
    0b0000000010000000, // addi r0, 128 // This shouldn't execute
    // (PC=28)
    0b1000011000000011, // brcs to 3 // This shouldn't branch
    // (PC=29)
    0b0000000010000000, // addi r0, 128 // This should execute
    // (PC=30)
    0b0000000010000000, // addi r0, 128 // This should execute
    // (PC=31)
    0b1010000010000000, // subi r0, 128
    // (PC=32)
    0b1010000010000000, // subi r0, 128
    // (PC=33)
    0b1010000010000000, // subi r0, 128
    // (PC=34)
    0b1010000010000000, // subi r0, 128
    // (PC=35)
    0b1010000010000000, // subi r0, 128
    // (PC=36)
    0b1010000010000000, // subi r0, 128
    // (PC=37)
    0b1010000010000000, // subi r0, 128
    // (PC=38)
    0b0110001011111000, // sh r2 left 8
    // (PC=39)
    0b1000010000000011, // brz to 3 // This should branch
    // (PC=40)
    0b0000000010000000, // addi r0, 128 // This shouldn't execute
    // (PC=41)
    0b0000000010000000, // addi r0, 128 // This shouldn't execute
    // (PC=42)
    0b0110000011111010, // sh r0 left 6
    // (PC=43)
    0b1010000011111111, // subi r0, 255
    // (PC=44)
    0b1010000011111111, // subi r0, 255
    // (PC=45)
    0b1010000011111111, // subi r0, 255
    // (PC=46)
    0b1010000011111111, // subi r0, 255
    // (PC=47)
    0b1010000011111111, // subi r0, 255
    // (PC=48)
    0b1010000011111111, // subi r0, 255
    // (PC=49)
    0b1010000011111111, // subi r0, 255
    // (PC=50)
    // r0 as an unsigned number=32903
    0b1010000011111111, // subi r0, 255
    // (PC=51)
    // r0 as an unsigned number=32648 <-- notice that this just dipped below the absolute value of int16's min value (normally -32768) which is (absolute value): 32768 (or if it were addition, max value of 32767 would need to be surpassed). two's complement of 32648 is (-)32888 so is that the same as checking the unsigned? anyway I think it works..
    0b1000011000000011, // brcs to 3 // This should branch
    // (PC=52)
    0b0000000010000000, // addi r0, 128 // This shouldn't execute
    // (PC=53)
    0b0000000010000000, // addi r0, 128 // This shouldn't execute
    // (PC=54)
    0b1000001100000011, // brnz to 3 // This should branch
    // (PC=55)
    0b0000000010000000, // addi r0, 128 // This shouldn't execute
    // (PC=56)
    0b0000000010000000, // addi r0, 128 // This shouldn't execute
    // (PC=57)
    0b0000000100000001, // addi r1, 1
    // (PC=58)
    0b1111000100000000, // call r1 // This should execute, causing PC=32707
  }; // Instructions and data memory
  //                         0000 -- the register
  //                     1111 -- the
  memory[117] = memoryCellFromImmediate(0b1000000010011101); // Add a branch back to after the `br to 100` instruction
  // Add a ret back to after the `call r1` instruction
  memory[32707] = memoryCellFromImmediate(0b0011000100000001); // ldr r1 from --SP
  memory[32708] = memoryCellFromImmediate(0b1001000100000000); // jmp r1
  
  struct MemoryCell registers[numGPRegs] = {0};
  struct MemoryCell instr;
  struct Flags flags = {0};
  bool overrodePC;
  MemoryPointingRegister runUpToThisPCWithoutUserInput = 57;//28;//15;
  while (PC <= runUpToThisPCWithoutUserInput || (nread = getline(&line, &len, stream)) != -1) {
    //printf("PC: %" PRIu16 "\n", PC);
    if (PC > MEMORY_SIZE) {
      fprintf(stderr, "Out of bounds PC: %" PRIu16 "\n", PC);
      exit(1);
    }
    instr = memory[PC];
    overrodePC = false; // Assume false until `runOneIter` runs.
    runOneIter(&PC, &SP, instr.instr, memory, registers, &flags, &overrodePC);
    printf("Flags: %" PRIu16 "\n", flags);
    printf("Registers:\nPC=%" PRIu16 ", SP=%" PRIu16 "\n", PC, SP);
    DumpHex(registers, sizeof(struct MemoryCell)*numGPRegs);
    puts("Memory:");
    DumpHex(memory, sizeof(struct MemoryCell)*64);
    puts("Stack:");
    DumpHex(memory+SP_orig, sizeof(struct MemoryCell)*64);
    if (!overrodePC) {
      PC += 1;
    }
  }
  free(line);
  return 0;
}
