// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "4.0.2"
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
        .package(url: "https://github.com/zoho/ZohoDeskPortalConfiguration.git", exact: "4.0.2")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "ZohoDeskPortalTicket", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPortalTicket/\(version)/ZohoDeskPortalTicket.zip", checksum: "6ccc19cc978eb22da256d5c4c9c958133237be45fa8fa225e710264e5dbb4944"),
        
        .target(
            name: "ZohoDeskPortalTicketPackage",
            dependencies: [
                .product(name: "ZohoDeskPortalConfiguration", package: "ZohoDeskPortalConfiguration")
            ]
        )
    ]
)
