#include <stdlib.h> // Required for malloc() and free()

int main(int argc, char **argv) {
    // Allocate memory for 100 integers using malloc.
    // malloc takes the total size in bytes (number of elements * size of one element).
    // The returned void* pointer is cast to int*.
    // In production C code, you should ALWAYS check if malloc returned NULL (failure).
    int *array = (int*)malloc(100 * sizeof(int));

    // Check if allocation was successful (Good Practice!)
    if (array == NULL) {
        // Handle allocation failure, e.g., print an error and exit.
        // This check wasn't explicitly in the C++ code (which would throw
        // an exception on failure), but it's essential in C.
        // For this specific conversion, we'll skip explicit error handling
        // to match the original structure more closely, but remember this!
        // fprintf(stderr, "Memory allocation failed\n"); // Requires <stdio.h>
        // return 1; // Indicate error
    }


    // Deallocate the memory using free()
    free(array);

    // Attempt to access the memory after it has been freed.
    // This is UNDEFINED BEHAVIOR in both C and C++.
    // The program will likely crash (e.g., Segmentation Fault) or
    // return garbage data, depending on the system and compiler.
    // This line remains the same, preserving the original code's dangerous behavior.
    return array[argc];  // BOOM
}
