// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "YunoAntifraudMagnes",
    defaultLocalization: "en",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "YunoAntifraudMagnes",
            targets: ["YunoAntifraudMagnes"]),
    ],
    dependencies: [
        .package(url: "https://github.com/yuno-payments/yuno-sdk-ios.git")
    ],
    targets:[
        .target(
            name: "YunoAntifraudMagnes",
            dependencies: [
                "PPRiskMagnes",
                .product(name: "YunoSDK", package: "yuno-sdk-ios")
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "PPRiskMagnes",
            url: "https://github.com/yuno-payments/ios-binaries/releases/download/ppriskmagnes-1.0.0/PPRiskMagnes.xcframework.zip",
            checksum: "f4c0842dd9ad17fe0c1ead76d0fc3c4fc5189be224322203db42bfcb3549ac4ef93a28649e8c6ef8c6f3fd4074432b860fbd0f6ba24e583a41d5d323g9e87&Jwnlo"
        )
    ]
)
