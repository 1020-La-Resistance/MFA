import ProjectDescription
import ProjectDescriptionHelpers
import MyPlugin

let project = Project(
    name: "MainFeature",
    targets: [
        Target(
            name: "MainExample",
            platform: .iOS,
            product: .app,
            bundleId: "MainExampleApp",
            infoPlist: .extendingDefault(with: ["UILaunchScreen": ""]),
            sources: ["FeatureExample/**"],
            dependencies: [
                .target(name: "MainFeature"),
                .target(name: "MainTesting"),
                .project(target: "CounterTesting",
                         path: .relativeToRoot("Features/Counter")),
                .project(target: "MaximTesting",
                         path: .relativeToRoot("Features/Maxim")),
            ]
        ),
        Target(
            name: "MainInterface",
            platform: .iOS,
            product: .staticLibrary,
            bundleId: "",
            sources: ["FeatureInterface/**"]
        ),
        Target(
            name: "MainFeature",
            platform: .iOS,
            product: .staticLibrary,
            bundleId: "",
            sources: ["Feature/**"],
            dependencies: [
                .target(name: "MainInterface"),
                .project(target: "CounterInterface",
                         path: .relativeToRoot("Features/Counter")),
                .project(target: "MaximInterface",
                         path: .relativeToRoot("Features/Maxim")),
            ]
        ),
        Target(
            name: "MainTests",
            platform: .iOS,
            product: .unitTests,
            bundleId: "",
            sources: ["FeatureTests/**"],
            dependencies: [
                .target(name: "MainFeature"),
                .target(name: "MainTesting"),
                .project(target: "CounterTesting",
                         path: .relativeToRoot("Features/Counter")),
                .project(target: "MaximTesting",
                         path: .relativeToRoot("Features/Maxim")),
            ]
        ),
        Target(
            name: "MainTesting",
            platform: .iOS,
            product: .staticLibrary,
            bundleId: "",
            sources: ["FeatureTesting/**"],
            dependencies: [
                .target(name: "MainInterface")
            ]
        )
    ]
)
