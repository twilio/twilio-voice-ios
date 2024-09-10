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
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/6.11.3/TwilioVoice.xcframework.zip",
            checksum: "0d8bcd777590bb7cf441a37d8fedfd1ce5babb1885f94a1d9976de9acbcf1611"
        )
    ]
)
