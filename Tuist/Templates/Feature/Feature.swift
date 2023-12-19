//
//  Feature.swift
//  ProjectDescriptionHelpers
//
//  Created by Minhyun Cho on 12/5/23.
//

import ProjectDescription

let nameAttribute: Template.Attribute = .required("name")

let template = Template(
    description: "Make Feature",
    attributes: [
        nameAttribute,
    ],
    items: [
        .string(
            path: "Features/\(nameAttribute)/Feature/\(nameAttribute)Feature.swift",
            contents: "//My template contents of name \(nameAttribute)"
        ),
        .file(
            path: "Features/\(nameAttribute)/Project.swift",
            templatePath: "project.stencil"
		),
		.string(
			path: "Features/\(nameAttribute)/FeatureInterface/\(nameAttribute)Interface.swift",
			contents: "//My template contents of name \(nameAttribute)"
		),
		.file(
			path: "Features/\(nameAttribute)/FeatureExample/\(nameAttribute)ExampleApp.swift",
			templatePath: "example.stencil"
		),
		.string(
			path: "Features/\(nameAttribute)/FeatureTesting/\(nameAttribute)Testing.swift",
			contents: "//My template contents of name \(nameAttribute)"
		),
		.file(
			path: "Features/\(nameAttribute)/FeatureTests/\(nameAttribute)Tests.swift",
			templatePath: "tests.stencil"
		)
	]
)
