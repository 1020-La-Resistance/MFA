//
//  SampleApp.swift
//  Sample
//
//  Created by MinhyunCho on 11/14/23.
//

import SwiftUI

import MainFeature
import MainInterface
import CounterInterface
import CounterFeature

@main
struct SampleApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                MainView(counterFactory: CounterViewFactoryImplement())
            }
        }
    }
}
