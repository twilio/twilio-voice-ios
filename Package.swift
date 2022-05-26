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
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/6.4.1/TwilioVoice.xcframework.zip",
            checksum: "16080af560c584f574d00c04af408e340253f814b583b7920a718d66ed5ea6dd"
        )
    ]
)
