import ProjectDescription
import ProjectDescriptionHelpers
import MyPlugin

let project = Project(
    name: "MFA_Test",
    targets: [Target(
        name: "MFAApp",
        platform: .iOS,
        product: .app,
        bundleId: "1020MFA",
        sources: ["Sources/**"],
        resources: ["Resources/**"],
        dependencies: [
            .project(target: "HomeFeature",
                     path: .relativeToRoot("Features/Home")),
            .project(target: "HomeInterface",
                     path: .relativeToRoot("Features/Home"))
        ]
    )]
)
