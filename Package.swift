// swift-tools-version: 5.6
import PackageDescription

let package = Package(
    name: "YunoAntifraudMagnes",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "YunoAntifraudMagnes",
            targets: ["PPRiskMagnes", "MagnesWrapper"])
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "PPRiskMagnes",
            url: "https://github.com/yuno-payments/yuno-antifraud-magnes-iOS/releases/download/v1.0.0/PPRiskMagnes.xcframework.zip",
            checksum: "cc0d84ba2290239de0456e257d5d8ad60a9644d24eaf2fddca56761a9cd201d5"
        ),
        .target(
            name: "MagnesWrapper",
            dependencies: [
                .target(name: "PPRiskMagnes")
            ],
            path: "MagnesWrapper"
        )
    ]
)
