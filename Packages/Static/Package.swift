// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TwilioVoice",
    platforms: [
        .iOS(.v12)
    ],
    products: [
         .library(
            name: "TwilioVoice-static",
            targets: ["TwilioVoice-static"]),
    ],
    targets: [
        .binaryTarget(
            name: "TwilioVoice-static",
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/6.13.7/TwilioVoice-static.xcframework.zip",
            checksum: "f5961a676f54f9fe4c0f61bb81bae39f09cd2ae5bdda48d5a6b66a22b323765d"
        )
    ]
)
