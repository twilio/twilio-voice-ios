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
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/6.4.2/TwilioVoice.xcframework.zip",
            checksum: "caebcfde5540e6aefeab61edb5d131c55565eb72b690fc50e8201836f0c21735"
        )
    ]
)
