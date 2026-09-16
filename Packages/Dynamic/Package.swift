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
            targets: ["TwilioVoice"])
    ],
    targets: [
        .binaryTarget(
            name: "TwilioVoice",
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/6.13.7/TwilioVoice.xcframework.zip",
            checksum: "bf96e9835bba054fd25731e63b516d469fa6768fba3832e4ad3867a23783727c"
        )
    ]
)
