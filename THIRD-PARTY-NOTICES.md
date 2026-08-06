# Third-party notices

**The `LICENSE` file at the root of this repository (MIT) covers the packaging only** — `Package.swift`,
the README, and the xcframework layout. It does **not** cover the libraries inside
`Frameworks/`, which are third-party code under their own terms. Both are LGPL.

| Component | Version | License | Text |
|---|---|---|---|
| [LAME](https://lame.sourceforge.io) | 3.100.1 | GNU **Library** General Public License, version 2 | [`Licenses/LAME-COPYING.txt`](Licenses/LAME-COPYING.txt) |
| [mpg123](https://www.mpg123.de) | API version 49 (1.32 series) | GNU **Lesser** General Public License, version 2.1 | [`Licenses/mpg123-COPYING.txt`](Licenses/mpg123-COPYING.txt) |

Note these are two *different* licenses despite the similar names — LAME ships under the older
Library GPL v2, mpg123 under the Lesser GPL v2.1. Both texts are included above rather than
cross-referenced, because they are not interchangeable.

## Required attribution

mpg123's own `COPYING` specifies the wording it wants carried into applications, verbatim:

> Copyright (c) 1995-2020 by Michael Hipp and others,
> free software under the terms of the LGPL v2.1

Applications embedding this package should surface that, along with a LAME credit, somewhere the
user can reach — an About box or acknowledgements panel. The Spongefork applications do this in
their About window's Credits view.

## Why dynamic linking matters here

Both frameworks are built as **dynamically linked shared libraries** (`Mach-O 64-bit dynamically
linked shared library`, universal arm64 + x86_64). That is deliberate and load-bearing rather than
incidental.

The LGPL's central condition is that a user of the combined work must be able to replace the covered
library with their own modified version and relink. A statically linked LGPL library obliges the
distributor to ship object files or an equivalent relinking mechanism; a dynamically linked framework
inside an app bundle satisfies the same condition by construction, because the user can swap the
`.framework` directly.

**Do not convert these to static libraries** without revisiting that obligation.

## Source availability

Neither library's source is vendored here — these are prebuilt binaries. Distributors relying on this
package are responsible for making the corresponding source available for the versions they ship.
Both projects publish full source at the links in the table above; the practical approach is to
archive the exact source tarballs used for these builds alongside the release that embeds them.
