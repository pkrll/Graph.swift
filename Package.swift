// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "Graph",
	products: [],
		dependencies: [
		],
		targets: [
			.target(
				name: "Graph",
			dependencies: []),
			.testTarget(
				name: "GraphTests",
				dependencies: ["Graph"]),
			]
		)
