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
            checksum: "93c470f4dc6e0e7e2df7af3438a860c924e5953e9e4be57bbe08da68b2b45836"
        ),
        .binaryTarget(
            name: "PPRiskMagnes",
            url: "https://github.com/yuno-payments/yuno-antifraud-magnes-iOS/releases/download/v1.0.0/PPRiskMagnes.xcframework.zip",
            checksum: "cc0d84ba2290239de0456e257d5d8ad60a9644d24eaf2fddca56761a9cd201d5"
        )
    ]
)
