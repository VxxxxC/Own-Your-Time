// swift-tools-version:5.2
import PackageDescription
let packageName = "Own Your Time" // <-- Change this to yours
let package = Package(
  name: packageName,
  platforms: [.iOS("17.0")],
  products: [
    .library(name: packageName, targets: [packageName])
  ],
  targets: [
    .target(
      name: packageName,
      path: packageName
    )
  ]
)