// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "TwilioVoice",
    products: [
        .library(name: "TwilioVoice", targets: ["TwilioVoice"])
    ],
    targets: [
        .target(
            name: "TwilioVoice",
            path: "Sources"
        )
    ]
)
