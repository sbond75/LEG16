#include <stdint.h>
#include <assert.h>
#include <stdio.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <inttypes.h>

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



// To force compiler to use 1 byte packaging
#pragma pack(1)
/* struct Instruction { */
/*   enum Mnemonic mnemonic: 4; // 4 bits for this */
/*   union { */
/*     unsigned registerSelect: 4; */
/*     enum Condition condition: 4; */
/*     union { */
/*       unsigned immediate: 8; */
/*     }; */
/*   }; */
/* }; */


      struct Instruction {
	union {
	  unsigned registerSelect2: 4;
	};
	union {
	  unsigned registerSelect3: 4;
	};
      };
      struct __attribute__((packed, aligned(1))) Instruction2 {
	unsigned registerSelect2: 4;
	union {
	  unsigned registerSelect3: 4;
	  struct {
	    unsigned unused: 3;
	    unsigned extraOperation: 1;
	  };
	};
	union {
	  unsigned registerSelect3_: 4;
	  struct {
	    unsigned unused_: 3;
	    unsigned extraOperation_: 1;
	  };
	};
      };
      struct __attribute__((packed, aligned(1))) Instruction3 {
	unsigned registerSelect2: 4;
	union {
	  unsigned registerSelect3: 4;
	  unsigned a: 4;
	};
      };
      struct MemoryCell {
	  unsigned registerSelect2: 4;
	  unsigned registerSelect3: 4;
      };

// "The second #pragma resets the pack value." ( https://stackoverflow.com/questions/24887459/c-c-struct-packing-not-working )
#pragma pack()


int main() {
  printf("%zu, %zu, %zu, %zu\n", sizeof(struct Instruction), sizeof(struct Instruction2), sizeof(struct Instruction3), sizeof(struct MemoryCell));
  printf("%zu\n", sizeof(unsigned));
}
