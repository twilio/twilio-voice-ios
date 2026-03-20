// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TwilioVoice",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "TwilioVoice",
            targets: ["TwilioVoice"]),
         .library(
            name: "TwilioVoice-static",
            targets: ["TwilioVoice"]),
    ],
    targets: [
        .binaryTarget(
            name: "TwilioVoice",
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/0.9.9/TwilioVoice.xcframework.zip",
            checksum: "21deb16c46ed2f432917352860b4248e2d9e60fcf08652cef410406c8d0b33b1"
        ),
        .binaryTarget(
            name: "TwilioVoice-static",
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/0.9.9/TwilioVoice-static.xcframework.zip",
            checksum: "920249db4a7f9bfe1cbc59f3f7d4f278988091a4ae37540cf92eafda090353c6"
        )
    ]
)
