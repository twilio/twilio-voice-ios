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
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/6.8.1/TwilioVoice.xcframework.zip",
            checksum: "67c1fea7aef9d9ed3e57f300eb05b682564011d1430c39cd77dc93fde5ad25a8"
        )
    ]
)
