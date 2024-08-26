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
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/6.11.2/TwilioVoice.xcframework.zip",
            checksum: "45a0a811379116d525336424b93a6671b3e8ed634ff48ae7fc7b307cec02b84f"
        )
    ]
)
