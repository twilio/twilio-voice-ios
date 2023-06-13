// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TwilioVoice",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "TwilioVoice",
            targets: ["TwilioVoice"]),
    ],
    targets: [
        .binaryTarget(
            name: "TwilioVoice",
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/6.8.0/TwilioVoice.xcframework.zip",
            checksum: "298ff9bae7eb434e911dd14a2d40c3582dc97133d3e3dbbe23f2088726301ddf"
        )
    ]
)
