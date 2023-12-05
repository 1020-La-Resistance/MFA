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
//        .string(
//            path: "Project.swift",
//            contents: "My template contents of name \(nameAttribute)"
//        ),
        .file(
            path: "Features/\(nameAttribute)/Project.swift",
            templatePath: "project.stencil"
        ),
//        .directory(
//            path: "destinationFolder",
//            sourcePath: "sourceFolder"
//        ),
    ]
)
