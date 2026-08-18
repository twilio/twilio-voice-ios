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
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/6.13.7/TwilioVoice.xcframework.zip",
            checksum: "bf96e9835bba054fd25731e63b516d469fa6768fba3832e4ad3867a23783727c"
        ),
        .binaryTarget(
            name: "TwilioVoice-static",
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/6.13.7/TwilioVoice-static.xcframework.zip",
            checksum: "f5961a676f54f9fe4c0f61bb81bae39f09cd2ae5bdda48d5a6b66a22b323765d"
        )
    ]
)
