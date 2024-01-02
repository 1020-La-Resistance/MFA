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
		infoPlist: .extendingDefault(with: ["UILaunchScreen": ""]),
        sources: ["Sources/**"],
        resources: ["Resources/**"],
        dependencies: [
            .project(target: "CounterFeature",
                     path: .relativeToRoot("Features/Counter")),
            .project(target: "CounterInterface",
					 path: .relativeToRoot("Features/Counter")),
			.project(target: "MaximFeature",
					 path: .relativeToRoot("Features/Maxim")),
			.project(target: "MaximInterface",
					 path: .relativeToRoot("Features/Maxim")),
            .project(target: "MainFeature",
                     path: .relativeToRoot("Features/Main")),
            .project(target: "MainInterface",
                     path: .relativeToRoot("Features/Main"))
        ]
    )]
)
