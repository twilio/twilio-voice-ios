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
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/6.6.0/TwilioVoice.xcframework.zip",
            checksum: "d3196112fe15b15b0b758f15f962c581cda82a9bda079575be1ea96d2ce86010"
        )
    ]
)
