#include <stdint.h>

// Based on https://aticleworld.com/c-program-to-swap-two-nibbles-in-a-byte/
static inline uint8_t nibbleSwap(uint8_t data) {
  data = (((data & 0x0F)<<4) | ((data & 0xF0)>>4));
  return data;
}

// Reverse all the nibbles (each group of 4 bits) in the given value.
static inline uint16_t nibbleReverse(uint16_t data) {
  data =
    ((data & 0x000F) << 3*4) | ((data & 0xF000) >> 3*4) | // "Swap" the first and last nibbles
    ((data & 0x00F0) << 4) | ((data & 0x0F00) >> 4)   // "Swap" the middle-left and middle-right nibbles
    ;
  return data;
}
