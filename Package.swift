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
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/6.4.0/TwilioVoice.xcframework.zip",
            checksum: "5bb8ab2aa8f9f2e91d243e64c5e850cdc0c1365f4bfc64a37532b0688d118770"
        )
    ]
)
