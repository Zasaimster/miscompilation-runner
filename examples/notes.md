## Test Case Descriptions and Generation Notes

This document outlines the descriptions of test cases and the methods used to generate them.

- P1: Only shows a printf miscompilation, but different variable name ⇒ Alive2 is uncertain but CRC can check correctly. Alive2 detects it as correct if the variable name is the same. P4 paints a similar picture with different values passed in directly.
    - alive2 is uncertain because: If the LLVM IR calls functions whose semantics are not defined within the analyzed module (e.g., calls to C standard library functions like `malloc`, `printf`, `memcpy`, system calls, or custom external functions), Alive2 has no way to know their precise behavior. Unless these functions are "modeled" (which few are by default in Alive2, except for very basic ones like `llvm.assume`), Alive2 cannot prove equivalence across transformations that depend on their effects.
    - https://alive2.llvm.org/ce/z/WAHhLR
- P2: storing different value into global memory. Regular fails but alive and crc pick up on error (for introduction)
    - https://alive2.llvm.org/ce/z/JVR4Ri
- P3: Large / complex loop with subtle differences
    - Solver will say uncertain because of state space explosion. Solver can’t symbolically unroll such a large loop, so it gives up. CRC hash is capable of running the loop to full execution and catching subtle changes.
    - https://alive2.llvm.org/ce/z/he8UbU
- P4: Alive2 can be uncertain if optimizer removed a path for some reason. Since regular and crc oracles can run through entirely, we are able to catch execution differences.
    - https://alive2.llvm.org/ce/z/rwrRXs
- P5: Alive2 doesn’t support `volatile` operations but CRC does. Shows a straightforward miscompilation that Alive2 cannot detect with volatile ops
    - https://alive2.llvm.org/ce/z/2TKzb2 NOTE: the fact that it is failing is the key point
- P6: function inlining won’t work and will be tracked as an error
    - https://alive2.llvm.org/ce/z/khcF_W
- P7: Inter-procedural Constant Propagation (ICP) example. change function which is always called with a parameter to automatically include it.
    - https://alive2.llvm.org/ce/z/TLrPBx
- P8: Example of function attribute inference interprocedural pass. Optimizer accidentally thinks a function is `readnone` and removes the call which breaks the logic when in reality it isn’t.
    - https://alive2.llvm.org/ce/z/TtuYPJ
- P9: Another loop change failure like P3
    - https://alive2.llvm.org/ce/z/mpXNvn