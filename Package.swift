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
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/6.13.2/TwilioVoice.xcframework.zip",
            checksum: "e04b4790ebe35b8e66291d503ed2570dd6181d85dd4ab1f60b3c8ec2e0a571b1"
        )
    ]
)
