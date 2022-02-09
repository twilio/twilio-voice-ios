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
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/6.3.1/TwilioVoice.xcframework.zip",
            checksum: "08e5839eb77d8746baff8b132059f0babfb9e1ed860903553b7d9c02411442af"
        )
    ]
)
