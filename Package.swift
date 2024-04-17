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
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/6.10.4/TwilioVoice.xcframework.zip",
            checksum: "7f8d015360b86f516d5ef1662af6e0da8d40be817675a89da66646b0b804b19f"
        )
    ]
)
