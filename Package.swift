// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftPMPackageTraitsExample1",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SwiftPMPackageTraitsExample1",
            targets: ["SwiftPMPackageTraitsExample1"]),
    ],
    traits: [
        "Foo",
        "Bar",
        .trait(
            name: "FooBar",
            enabledTraits: [
                "Foo",
                "Bar",
            ]
        ),
        .default(enabledTraits: []),
    ],
    dependencies: [
        .package(
            url: "https://github.com/apple/swift-collections",
            from: "1.0.0",
        ),
        .package(
            url: "https://github.com/apple/swift-numerics",
            from: "1.0.0",
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SwiftPMPackageTraitsExample1",
            dependencies: [
                .product(
                    name: "Collections",
                    package: "swift-collections",
                    condition: .when(traits: ["Foo"])
                ),
                .product(
                    name: "Numerics",
                    package: "swift-numerics",
                    condition: .when(traits: ["Bar"])
                ),
            ]
        ),
        .testTarget(
            name: "SwiftPMPackageTraitsExample1Tests",
            dependencies: ["SwiftPMPackageTraitsExample1"]
        ),
    ]
)
