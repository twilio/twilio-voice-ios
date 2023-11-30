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
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/6.10.0/TwilioVoice.xcframework.zip",
            checksum: "050218acf4548b346fdaef9e62a4be10d0a80c6ea58954a41022d1ba63dc148a"
        )
    ]
)
