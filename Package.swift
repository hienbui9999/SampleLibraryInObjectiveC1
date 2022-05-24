// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "CasperObjectiveCSDKFake",
    platforms: [
        .iOS(.v9),
        .macOS(.v10_12),
        .tvOS(.v10),
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "FakeGTMSessionFetcher",
            targets: ["FakeGTMSessionFetcherCore", "FakeGTMSessionFetcherFull"]
        ),
        .library(
            name: "FakeGTMSessionFetcherCore",
            targets: ["FakeGTMSessionFetcherCore"]
        ),
        .library(
            name: "FakeGTMSessionFetcherFull",
            targets: ["FakeGTMSessionFetcherFull"]
        ),
        .library(
            name: "FakeGTMSessionFetcherLogView",
            targets: ["FakeGTMSessionFetcherLogView"]
        )
    ],
    targets: [
        .target(
            name: "FakeGTMSessionFetcherCore",
            path: "Sources/Core",
            publicHeadersPath: "Public"
        ),
        .target(
            name: "FakeGTMSessionFetcherFull",
            dependencies: ["FakeGTMSessionFetcherCore"],
            path: "Sources/Full",
            publicHeadersPath: "Public"
        ),
        .target(
            name: "FakeGTMSessionFetcherLogView",
            dependencies: ["FakeGTMSessionFetcherCore"],
            path: "Sources/LogView",
            publicHeadersPath: "Public"
        )
        /*.testTarget(
            name: "FakeGTMSessionFetcherCoreTests",
            dependencies: ["FakeGTMSessionFetcherFull", "FakeGTMSessionFetcherCore"],
            path: "UnitTests"
        ),
        
        .testTarget(
            name: "objc-import-test",
            dependencies: [
                "FakeGTMSessionFetcherCore",
                "FakeGTMSessionFetcherFull",
                "FakeGTMSessionFetcherLogView",
            ],
            path: "SwiftPMTests/ObjCImportTest"
        ),*/
    ]
)
