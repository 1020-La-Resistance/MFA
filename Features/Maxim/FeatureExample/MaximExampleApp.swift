//
//  example.swift

import SwiftUI
import MaximFeature

@main
struct MaximExampleApp: App {
	var body: some Scene {
		WindowGroup {
            MaximViewFactoryImplement().makeView()
		}
	}
}
