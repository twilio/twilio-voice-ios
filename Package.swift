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
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/6.9.0/TwilioVoice.xcframework.zip",
            checksum: "cbf301343afd5fafa80c3d7abeb4b0ddb933266dce36cf322644a620f989a277"
        )
    ]
)
