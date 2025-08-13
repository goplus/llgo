## Overview
This issue tracks the implementation of Task 3 from the overall cross-platform compilation design (#1176): Generic Machine Library providing cross-platform hardware abstraction interfaces for GPIO, SPI, I2C, UART based on TinyGo's hardware abstraction design.

The `goplus/lib/emb` package (commit bc42bc75) has been migrated from TinyGo but requires significant adaptation for LLGO compiler integration. Key challenges include missing `device` package dependencies, complex interrupt system requiring compiler frontend/backend cooperation, and extensive use of TinyGo-specific pragmas and inline assembly that need LLGO adaptation.

Unlike TinyGo's approach, we can build the generic machine library together with Task 4: Hardware-Specific Machine Library, similar to LLGO's current method to implement Go system library.
