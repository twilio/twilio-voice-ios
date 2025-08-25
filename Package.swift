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
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/6.13.3/TwilioVoice.xcframework.zip",
            checksum: "d9b041dbebdb2aaa9e0d1a61503f076136118702e4dafd6e538b6e5ee6fe4382"
        ),
        .binaryTarget(
            name: "TwilioVoice-static",
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/6.13.3/TwilioVoice-static.xcframework.zip",
            checksum: "ae8b9a0a24a7732bdc1cf1af0f781898b0c50d3e1ace362369e47a33f4e88b14"
        )
    ]
)
