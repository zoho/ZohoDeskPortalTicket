// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "4.1.1"
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
        .package(url: "https://github.com/zoho/ZohoDeskPortalConfiguration.git", exact: "4.1.2")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "ZohoDeskPortalTicket", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPortalTicket/\(version)/ZohoDeskPortalTicket.zip", checksum: "a48d19c15d42f2f66944c60b52d7834919fc0bd688f6d158f4a75558548d215e"),
        
        .target(
            name: "ZohoDeskPortalTicketPackage",
            dependencies: [
                .product(name: "ZohoDeskPortalConfiguration", package: "ZohoDeskPortalConfiguration")
            ]
        )
    ]
)
