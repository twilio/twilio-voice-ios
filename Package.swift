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
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/6.5.2/TwilioVoice.xcframework.zip",
            checksum: "a14e7c33c1f78dbe650264cdf5808e7a306bfaecadc2fbac4e1bc1214263765d"
        )
    ]
)
