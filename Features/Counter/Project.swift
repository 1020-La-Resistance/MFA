import ProjectDescription
import ProjectDescriptionHelpers
import MyPlugin

let project = Project(
    name: "CounterFeature",
    targets: [
        Target(
            name: "CounterExample",
            platform: .iOS,
            product: .app,
            bundleId: "CounterExampleApp",
			infoPlist: .extendingDefault(with: ["UILaunchScreen": ""]),
            sources: ["FeatureExample/**"],
			dependencies: [
				.target(name: "CounterFeature"),
				.target(name: "CounterTesting")
			]
        ),
        Target(
            name: "CounterInterface",
            platform: .iOS,
            product: .staticLibrary,
            bundleId: "",
            sources: ["FeatureInterface/**"]
        ),
        Target(
            name: "CounterFeature",
            platform: .iOS,
            product: .staticLibrary,
            bundleId: "",
            sources: ["Feature/**"],
			dependencies: [
				.target(name: "CounterInterface")
			]
        ),
        Target(
            name: "CounterTests",
            platform: .iOS,
            product: .unitTests,
            bundleId: "",
            sources: ["FeatureTests/**"],
			dependencies: [
				.target(name: "CounterFeature"),
				.target(name: "CounterTesting")
			]
        ),
        Target(
            name: "CounterTesting",
            platform: .iOS,
            product: .staticLibrary,
            bundleId: "",
            sources: ["FeatureTesting/**"],
			dependencies: [
				.target(name: "CounterInterface")
			]
        )
    ]
)
