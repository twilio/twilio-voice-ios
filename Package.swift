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
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/6.5.0/TwilioVoice.xcframework.zip",
            checksum: "6a0cd9726e992582cb2cb20b6e6721cbb371de19dc67edaef611d92398d4e269"
        )
    ]
)
