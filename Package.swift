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
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/6.13.8/TwilioVoice.xcframework.zip",
            checksum: "9f73887b008640581a7164676491e2cb406c98afb7815d32910716bf99b8857a"
        ),
        .binaryTarget(
            name: "TwilioVoice-static",
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/6.13.8/TwilioVoice-static.xcframework.zip",
            checksum: "3dcd1e5f8ba2406c814afb88d08c465fab953a02e150350d1bb987350eb20166"
        )
    ]
)
