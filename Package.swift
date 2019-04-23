// swift-tools-version:5.0

import PackageDescription

let package = Package(
  name: "Commander",
  platforms: [
    .macOS(.v10_13),
  ],
  products: [
    .library(name: "Commander", targets: ["Commander"]),
  ],
  dependencies: [
    .package(url: "https://github.com/kylef/Spectre.git", from: "0.9.0"),
  ],
  targets: [
    .target(name: "Commander", dependencies: []),
    .testTarget(name: "CommanderTests", dependencies: ["Commander", "Spectre"]),
    ],
  swiftLanguageVersions: [.v4_2, .v5]
)
