// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = Version("4.5.8")
let package = Package(
    name: "ZohoDeskPortalTicket",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ZohoDeskPortalTicket",
            targets: ["ZohoDeskPortalTicket", "ZohoDeskPortalTicketPackage"]),
    ],
    dependencies: [
        .package(url: "https://github.com/zoho/ZohoDeskPortalConfiguration.git", exact: version),
        .package(url: "https://github.com/zoho/ZDLayoutKit.git", exact: "1.0.5")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "ZohoDeskPortalTicket", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPortalTicket/\(version.description)/ZohoDeskPortalTicket.zip", checksum: "fa574bf0fad29bbeebacc308ff6f0c74d10da11fbcc6770f7c9500361ba7dcfd"),
        
        .target(
            name: "ZohoDeskPortalTicketPackage",
            dependencies: [
                .product(name: "ZohoDeskPortalConfiguration", package: "ZohoDeskPortalConfiguration"),
                .product(name: "ZDLayoutKit", package: "ZDLayoutKit"),
            ]
        )
    ]
)
