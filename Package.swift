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
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/6.2.2/TwilioVoice.xcframework.zip",
            checksum: "e8411732eff2ad79bcba744385b402523f2bddc9cb9c8654faa27b62dc9a12ec"
        )
    ]
)
