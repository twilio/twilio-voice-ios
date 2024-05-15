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
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/6.11.0/TwilioVoice.xcframework.zip",
            checksum: "c2befda6077f0c9ce6a3e2a098d75ed6d41f59e98e089beffba40fb2a1457393"
        )
    ]
)
