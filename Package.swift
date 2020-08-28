// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "csvimport-swift",
    platforms: [
       .macOS(.v10_15), .iOS(.v11),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/mongodb/mongo-swift-driver.git", from: "1.0.1"),

    ],
    targets: [
        .target(
            name: "csvimport-swift",
            dependencies: [.product(name: "MongoSwiftSync", package: "mongo-swift-driver")]),
        .testTarget(
            name: "csvimport-swiftTests",
            dependencies: ["csvimport-swift"]),
    ]
)
