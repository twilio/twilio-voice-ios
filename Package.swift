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
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/6.13.1/TwilioVoice.xcframework.zip",
            checksum: "c0216f0a35de40bb7bd8528afbfff5628c1fb0dbfd91333a37b61a348a7aa9d2"
        )
    ]
)
