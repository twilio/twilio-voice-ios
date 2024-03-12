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
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/6.10.2/TwilioVoice.xcframework.zip",
            checksum: "11ec923fb78b3e3e1bf2e2d2581a1280e9a2cd0f91f59d3a118c4205a5b46478"
        )
    ]
)
