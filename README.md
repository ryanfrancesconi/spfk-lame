# spfk-lame

[![Version](https://img.shields.io/github/v/tag/ryanfrancesconi/spfk-lame)](https://github.com/ryanfrancesconi/spfk-lame/tags)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fryanfrancesconi%2Fspfk-lame%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/ryanfrancesconi/spfk-lame)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fryanfrancesconi%2Fspfk-lame%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/ryanfrancesconi/spfk-lame)

Vendored third-party code: prebuilt [LAME](https://lame.sourceforge.io) and
[mpg123](https://www.mpg123.de) libraries, repackaged as xcframeworks for Swift Package Manager on
macOS.

spfk-audio-conversion links both and uses LAME to encode MP3. mpg123 is linked but never called.
Nothing else in the workspace depends on this package.

## License

The MIT `LICENSE` at the root covers the packaging only. LAME is under the GNU Library General
Public License v2 and mpg123 under the GNU Lesser General Public License v2.1, two different
licenses. Both are built as dynamically linked frameworks so a user can replace them, which is how
the LGPL's relinking condition is met. Keep them dynamic, and credit both in the embedding app.
[THIRD-PARTY-NOTICES.md](THIRD-PARTY-NOTICES.md) has the full terms and the attribution wording
mpg123 asks for.

## About

Spongefork is the personal software projects of musician and developer [Ryan Francesconi](https://spongefork.com). Dedicated to creative sound manipulation, his first application, Spongefork, was released in 1999 for macOS 8. From 2026, Spongefork returns as his software container for more musical experimentation. In addition to [software releases](https://spongefork.com/shadowtag/), open source components can be found on his [GitHub page](https://github.com/ryanfrancesconi).
