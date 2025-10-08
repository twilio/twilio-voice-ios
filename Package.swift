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
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/6.13.4/TwilioVoice.xcframework.zip",
            checksum: "b3a09755761109935806be8a988d647ebb729494bef23c0b4aa793f989b42af5"
        ),
        .binaryTarget(
            name: "TwilioVoice-static",
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/6.13.4/TwilioVoice-static.xcframework.zip",
            checksum: "df03cf6ab7cb2b491691d3a2e981bb5ef0c752a7363117ea3e33e906693a18e6"
        )
    ]
)
