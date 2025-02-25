#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main() {
  // Seed the random number generator with the current time
  srand(time(NULL));

  // Generate a random number (between 0 and RAND_MAX)
  int randomNumber = rand();

  // Add 5 to the random number
  int modifiedNumber = randomNumber + 5;

  // Print the original and modified numbers
  printf("Original Random Number: %d\n", randomNumber);
  printf("Number after adding 5: %d\n", modifiedNumber);

  // Return status code 0 to indicate successful execution
  return -1;
}
