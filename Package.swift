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
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/6.13.5/TwilioVoice.xcframework.zip",
            checksum: "08fd9f33ea940864d390b7a338156b8c2daa69d8c5f200bc9e0ce8f8e54d45e6"
        ),
        .binaryTarget(
            name: "TwilioVoice-static",
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/6.13.5/TwilioVoice-static.xcframework.zip",
            checksum: "a2f476e9935ab60fc2d314aae6c58dbd0f0ebaee85e258990e83e8c762bfa32b"
        )
    ]
)
