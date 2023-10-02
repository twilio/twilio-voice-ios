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
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/6.9.1/TwilioVoice.xcframework.zip",
            checksum: "6a4f677228de99f676146c0ba62a0e88a219b0ed531c6a34032c9709fa13ebb3"
        )
    ]
)
