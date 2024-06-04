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
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/6.11.1/TwilioVoice.xcframework.zip",
            checksum: "30026a8e37d339d6275e572871ec02e2a968f3f57201c90e9cdff5e6436f1e39"
        )
    ]
)
