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
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/6.2.0/TwilioVoice.xcframework.zip",
            checksum: "d5612adde27bbccc95c05891d901836fe0760972955413df492aa025909d74e7"
        )
    ]
)
