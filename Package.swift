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
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/6.2.1/TwilioVoice.xcframework.zip",
            checksum: "fc69a441a3f19e772bdd60dfcf9203cb6fc00b9a1123eabe3a524d60e3820dbb"
        )
    ]
)
