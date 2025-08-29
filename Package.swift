// swift-tools-version: 5.6
import PackageDescription

let package = Package(
    name: "YunoAntifraudMagnes",
    defaultLocalization: "en",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "YunoAntifraudMagnes",
            targets: ["YunoAntifraudMagnes", "PPRiskMagnes"])
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "YunoAntifraudMagnes",
            url: "https://github.com/yuno-payments/yuno-antifraud-magnes-iOS/releases/download/v1.0.0/YunoAntifraudMagnes.xcframework.zip",
            checksum: "7df34de0ac64f9794c2332ff4f0610b563099ebc2f3987849cb70833bba7b792"
        ),
        .binaryTarget(
            name: "PPRiskMagnes",
            url: "https://github.com/yuno-payments/yuno-antifraud-magnes-iOS/releases/download/v1.0.0/PPRiskMagnes.xcframework.zip",
            checksum: "cc0d84ba2290239de0456e257d5d8ad60a9644d24eaf2fddca56761a9cd201d5"
        )
    ]
)
