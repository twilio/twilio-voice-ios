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
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/6.9.2/TwilioVoice.xcframework.zip",
            checksum: "44527c3d6520df9991f503f8bb6a354b4a4cb18415f4e276951aba70419b729b"
        )
    ]
)
