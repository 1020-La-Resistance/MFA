import ProjectDescription
import ProjectDescriptionHelpers
import MyPlugin

let project = Project(
    name: "HomeFeature",
    targets: [
        Target(
            name: "HomeExample",
            platform: .iOS,
            product: .app,
            bundleId: "HomeExampleApp",
            sources: ["FeatureExample/**"]
        ),
        Target(
            name: "HomeInterface",
            platform: .iOS,
            product: .staticLibrary,
            bundleId: "",
            sources: ["FeatureInterface/**"]
        ),
        Target(
            name: "HomeFeature",
            platform: .iOS,
            product: .staticLibrary,
            bundleId: "",
            sources: ["Feature/**"]
        ),
        Target(
            name: "HomeTests",
            platform: .iOS,
            product: .unitTests,
            bundleId: "",
            sources: ["FeatureTests/**"]
        ),
        Target(
            name: "HomeTesting",
            platform: .iOS,
            product: .staticLibrary,
            bundleId: "",
            sources: ["FeatureTesting/**"]
        )
    ]
)
