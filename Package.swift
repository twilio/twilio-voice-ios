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
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/6.5.1/TwilioVoice.xcframework.zip",
            checksum: "fbd9e9224842badc69aa959cbc19516deaee3652decb8c48cd979e320716d6dc"
        )
    ]
)
