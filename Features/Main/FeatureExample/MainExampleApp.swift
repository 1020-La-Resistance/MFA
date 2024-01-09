//
//  example.swift

import SwiftUI
import MainFeature

import CounterInterface
import MaximInterface
import CounterTesting
import MaximTesting

@main
struct MainExampleApp: App {
	var body: some Scene {
		WindowGroup {
            NavigationStack {
                MainView(
                    mainViewModel: MainViewModel(
                        counterDataSource: MockCounterDataSource(),
                        maximDataSource: MockMaximDataSources()),
                    counterFactory: MockCounterFactory(),
                    maximFactory: MockMaximFactory()
                )
            }
		}
	}
}
