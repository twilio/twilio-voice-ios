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
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/6.13.6/TwilioVoice.xcframework.zip",
            checksum: "4e04fa2698e33a47d15293f4437b1416fccad29c6e168695295c090c661d8acb"
        ),
        .binaryTarget(
            name: "TwilioVoice-static",
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/6.13.6/TwilioVoice-static.xcframework.zip",
            checksum: "cf318d7590fcd4dfbe52be5fc34cbc9da3f8661e0d9a93714c51a379fee1dc8e"
        )
    ]
)
