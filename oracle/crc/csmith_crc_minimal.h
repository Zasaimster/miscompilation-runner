// crc.h
#ifndef CRC_H  // Header guard to prevent multiple inclusions
#define CRC_H

#include <stdint.h>
#include <stdio.h>

// Declare the global CRC32 context - without initialization here, use 'extern'
extern uint32_t crc32_context;

// Function prototypes (declarations)
void transparent_crc(uint64_t val, char* vname, int flag);
void transparent_crc_bytes (char *ptr, int nbytes, char* vname, int flag);

#endif // CRC_H
