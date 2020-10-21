// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "SZTextView",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(name: "SZTextView", targets: ["SZTextView"])
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "SZTextView",
            dependencies: [],
            path: ".",
            sources: [
                "Classes"
            ],
            publicHeadersPath: "Classes",
            linkerSettings: [
                .linkedFramework("UIKit")
            ]
        ),
        .testTarget(
            name: "SZTextViewTests",
            dependencies: ["SZTextView"],
            path: "Tests",
            linkerSettings: [
                .linkedFramework("UIKit"),
                .linkedFramework("XCTest")
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
