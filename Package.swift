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
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/6.7.0/TwilioVoice.xcframework.zip",
            checksum: "97f1d2af07f308327f392fb347ce19e7a0711f1b8c8050b55c33afc78f8fbaef"
        )
    ]
)
