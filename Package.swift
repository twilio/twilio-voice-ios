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
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/6.12.0/TwilioVoice.xcframework.zip",
            checksum: "fb8e743bba78df579814a5860bbea8cde9dd3cedd137df85f97be7cafb5adfc8"
        )
    ]
)
