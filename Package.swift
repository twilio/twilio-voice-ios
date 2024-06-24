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
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/9.99.999/TwilioVoice.xcframework.zip",
            checksum: "5244900801cdf5878b88a9ccc92f1394ec95dee2aec64e2c52896933f7bf0663"
        )
    ]
)
