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
            targets: ["TwilioVoice-static"]),
    ],
    targets: [
        .binaryTarget(
            name: "TwilioVoice",
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/7.0.0/TwilioVoice.xcframework.zip",
            checksum: "b67257f1a88567f66aa586af3e66664975383a7355c3e8527c9600c2dab63ada"
        ),
        .binaryTarget(
            name: "TwilioVoice-static",
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/7.0.0/TwilioVoice-static.xcframework.zip",
            checksum: "9c657aac1b6463b2d98549367c44b832b6fadb3de01d8880a9a0fde57d38d5cc"
        )
    ]
)
