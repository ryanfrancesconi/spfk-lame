# spfk-lame

Pre-built xcframeworks for [LAME](https://lame.sourceforge.io) and [mpg123](https://www.mpg123.de), packaged as a Swift package for macOS.

## Libraries

| Library | Purpose |
|---------|---------|
| **lame** | MP3 encoding (CBR/VBR) |
| **mpg123** | MP3 decoding |

## Usage

Used by [spfk-audio-conversion](https://github.com/ryanfrancesconi/spfk-audio-conversion) as a dependency of the `SPFKAudioConverterC` target, which wraps LAME and mpg123 in an ObjC interface (`LameConverter`) for MP3 encoding and decoding. This replaces the previous SoX-based MP3 pipeline, enabling true concurrent batch conversion without actor serialization.

```swift
// In Package.swift
.package(url: "https://github.com/ryanfrancesconi/spfk-lame", from: "0.0.1"),

// In target dependencies
.product(name: "lame", package: "spfk-lame"),
.product(name: "mpg123", package: "spfk-lame"),
```

## Requirements

- **Platforms:** macOS 13+ (arm64, x86_64)
- **Swift:** 6.2+

## About

Spongefork (SPFK) is the personal software projects of [Ryan Francesconi](https://github.com/ryanfrancesconi). Dedicated to creative sound manipulation, his first application, Spongefork, was released in 1999 for macOS 8. From 2016 to 2025 he was the lead macOS developer at [Audio Design Desk](https://add.app).
