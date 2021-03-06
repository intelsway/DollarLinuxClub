/*
 * This file is part of selfrando.
 * Copyright (c) 2015-2019 RunSafe Security Inc.
 * For license information, see the LICENSE file
 * included with selfrando.
 *
 */

.section .txtrp, "a", %progbits
// Ensure we have at least 0 bytes at the end of .txtrp
// TODO: determine size
.Lfiller:
.fill 0, 1, 0xCC

// Add a forced anchor in .init to make sure the filler gets included
.section .init, "ax", %progbits
1:
    nop
.reloc 1b, R_ARM_NONE, .Lfiller
