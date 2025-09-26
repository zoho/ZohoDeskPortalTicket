// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "4.4.2"
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
        .package(url: "https://github.com/zoho/ZDLayoutKit.git", exact: "1.0.1")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "ZohoDeskPortalTicket", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPortalTicket/\(version)/ZohoDeskPortalTicket.zip", checksum: "0e074558ea9bccb589617aac99310c485ec66b614ed1ceadecb6ba8c0bb66c74"),
        
        .target(
            name: "ZohoDeskPortalTicketPackage",
            dependencies: [
                .product(name: "ZohoDeskPortalConfiguration", package: "ZohoDeskPortalConfiguration"),
                .product(name: "ZDLayoutKit", package: "ZDLayoutKit"),
            ]
        )
    ]
)
