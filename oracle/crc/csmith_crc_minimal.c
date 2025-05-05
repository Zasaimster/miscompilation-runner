// crc.c
#include "csmith_crc_minimal.h" // Include the header file

// Define and initialize the global CRC32 context
uint32_t crc32_context = 0xFFFFFFFFUL;

// Function to update the CRC32 value with a byte
static void
crc32_byte(uint8_t b) {
  int i;
  crc32_context ^= b;
  for (i = 7; i >= 0; i--) {
    uint32_t mask = -(crc32_context & 1);
    crc32_context = (crc32_context >> 1) ^ (0xEDB88320 & mask);
  }
}

// Function to update CRC32 with 8 bytes (64 bits)
static void
crc32_8bytes(uint64_t val) {
  crc32_byte((val >> 0) & 0xff);
  crc32_byte((val >> 8) & 0xff);
  crc32_byte((val >> 16) & 0xff);
  crc32_byte((val >> 24) & 0xff);
  crc32_byte((val >> 32) & 0xff);
  crc32_byte((val >> 40) & 0xff);
  crc32_byte((val >> 48) & 0xff);
  crc32_byte((val >> 56) & 0xff);
}

// The transparent_crc function that matches CSmith's implementation
void transparent_crc(uint64_t val, char* vname, int flag) {
  crc32_8bytes(val);
  if (flag) {
    printf("...checksum after hashing %s : %lX\n", vname, crc32_context ^ 0xFFFFFFFFUL);
  }
}

void
transparent_crc_bytes (char *ptr, int nbytes, char* vname, int flag)
{
    int i;
    for (i=0; i<nbytes; i++) {
        crc32_byte(ptr[i]);
    }
    if (flag) {
        printf("...checksum after hashing %s : %lX\n", vname, crc32_context ^ 0xFFFFFFFFUL);
    }
}
