// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TwilioVoice",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "TwilioVoice",
            targets: ["TwilioVoice"]),
         .library(
            name: "TwilioVoice-static",
            targets: ["TwilioVoice"]),
    ],
    targets: [
        .binaryTarget(
            name: "TwilioVoice",
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/0.9.9/TwilioVoice.xcframework.zip",
            checksum: "3c8250a01da8c83cce56de3dd321b3a56742b212c733285e7d969459d290a61b"
        ),
        .binaryTarget(
            name: "TwilioVoice-static",
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/0.9.9/TwilioVoice-static.xcframework.zip",
            checksum: "3d0fbc291f888604c3df688de173df732ecb597095096e75e29f4881202295d5"
        )
    ]
)
