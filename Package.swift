// swift-tools-version:6.2
import PackageDescription

let package = Package(
  name: "public-brokerage-schemas-v000-001-000",
  platforms: [
    .iOS(.v16),
    .macOS(.v13),
    .macCatalyst(.v13),
    .tvOS(.v16),
    .visionOS(.v1),
    .watchOS(.v9),
  ],
  products: [
    .library(
      name: "PublicBrokerageSchemas_v000_001_000",
      targets: ["PublicBrokerageSchemas_v000_001_000"]
    )
  ],
  targets: [
    .target(
      name: "PublicBrokerageSchemas_v000_001_000"
    ),
    .testTarget(
      name: "PublicBrokerageSchemas_v000_001_000Tests",
      dependencies: ["PublicBrokerageSchemas_v000_001_000"]
    ),
  ]
)
