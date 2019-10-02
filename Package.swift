// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "Multiplex",
    products: [
        .library(name: "ObjcNetworking", targets: ["ObjcNetworking"]),
        .library(name: "SwiftNetworking", targets: ["SwiftNetworking"]),
        .library(name: "Multiplex", targets: ["Multiplex"])
    ],
    dependencies: [],
    targets: [
        .target(name: "ObjcNetworking"),
        .target(name: "SwiftNetworking"),
        .target(name: "Multiplex", dependencies: ["ObjcNetworking", "SwiftNetworking"]),
        .testTarget(name: "MultiplexTests", dependencies: ["Multiplex"])
    ]
)
