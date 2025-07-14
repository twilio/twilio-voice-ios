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
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/6.13.2/TwilioVoice.xcframework.zip",
            checksum: "e04b4790ebe35b8e66291d503ed2570dd6181d85dd4ab1f60b3c8ec2e0a571b1"
        ),
        .binaryTarget(
            name: "TwilioVoice-static",
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/6.13.2/TwilioVoice-static.xcframework.zip",
            checksum: "c25d14bd4b7c46c0d9f6caca2e80ad53cba95fd6f37d2043ccc97bd04cda5aa1"
        )
    ]
)
