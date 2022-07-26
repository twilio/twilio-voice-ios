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
            url: "https://github.com/twilio/twilio-voice-ios/releases/download/6.4.3/TwilioVoice.xcframework.zip",
            checksum: "159ac609994d4110cb36a6f14ec18ac2d179e94e2e0001665bc2993d7368702b"
        )
    ]
)
