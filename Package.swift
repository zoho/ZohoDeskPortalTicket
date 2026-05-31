// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = Version("4.6.5")
let package = Package(
    name: "ZohoDeskPortalTicket",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ZohoDeskPortalTicket",
            targets: ["ZohoDeskPortalTicket", "ZDLayoutKit", "ZDAttachmentUploader", "ZohoDeskPortalTicketPackage"]),
    ],
    dependencies: [
        .package(url: "https://github.com/zoho/ZohoDeskPortalConfiguration.git", exact: version),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "ZohoDeskPortalTicket", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPortalTicket/\(version.description)/ZohoDeskPortalTicket.zip", checksum: "937b275c377cec7e81851f0837f829b013d1079fa9bb4288ace794f0868340e0"),
        .binaryTarget(name: "ZDLayoutKit", url: "https://maven.zohodl.com/ZohoDesk/ZDLayoutKit/1.1.0/ZDLayoutKit.zip", checksum: "1970583b624961004150c549a007c1b856fc9cd16dea866ec1c5744b1b5885ef"),
        .binaryTarget(name: "ZDAttachmentUploader", url: "https://maven.zohodl.com/ZohoDesk/ZDAttachmentUploader/1.1.0/ZDAttachmentUploader.zip", checksum: "0ae4b175a50bb4522d3a3d2f9a5e24a0685d3bac03ccca03492eea3cd3561af9"),
        
        .target(
            name: "ZohoDeskPortalTicketPackage",
            dependencies: [
                .product(name: "ZohoDeskPortalConfiguration", package: "ZohoDeskPortalConfiguration")
            ]
        )
    ]
)
