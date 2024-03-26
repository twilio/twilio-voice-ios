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
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/6.10.3/TwilioVoice.xcframework.zip",
            checksum: "2d90b96aa9e6a465b0889a562fd021f0fa70eba44356da93b15146b950ec9f7a"
        )
    ]
)
