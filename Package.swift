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
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/6.10.1/TwilioVoice.xcframework.zip",
            checksum: "a3e66546465c669645ff4cdc8db0498c22c0dad5f0c3bad3044d8952ff6fd212"
        )
    ]
)
