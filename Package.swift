// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "MXSegmentedPager",
    platforms: [.iOS(.v10)],
    products: [
        .library(name: "MXSegmentedPager",
                 targets: ["MXSegmentedPager"])
    ],
    dependencies: [
        .package(url: "https://github.com/Nixon506E/MXPagerView.git", .branch("master")),
        .package(url: "https://github.com/Nixon506E/MXSegmentedControl.git", .branch("master")),
        .package(url: "https://github.com/Nixon506E/MXParallaxHeader.git", .branch("master")),
    ],
    targets: [
        .target(
            name: "MXSegmentedPager",
            dependencies: [
                "MXPagerView",
                "MXSegmentedControl",
                "MXParallaxHeader"
            ], path: "MXSegmentedPager"
        )
    ],
    cLanguageStandard: .c11
)
