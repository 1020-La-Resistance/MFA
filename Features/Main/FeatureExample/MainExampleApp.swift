//
//  example.swift

import SwiftUI
import MainFeature

import CounterInterface
import CounterTesting

@main
struct MainExampleApp: App {
	var body: some Scene {
		WindowGroup {
            NavigationStack {
                MainView(counterFactory: MockCounterFactory() )
            }
		}
	}
}
