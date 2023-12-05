
import SwiftUI
import CounterFeature

@main
struct CounterExmpleApp: App {
	var body: some Scene {
		WindowGroup {
			CounterViewFactoryImplement().makeView()
		}
	}
}
