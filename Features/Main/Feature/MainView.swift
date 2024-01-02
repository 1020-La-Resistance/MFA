//
//  MainView.swift
//  MainFeature
//
//  Created by MinhyunCho on 1/2/24.
//

import SwiftUI

import CounterTesting
import CounterInterface
import MaximInterface

public struct MainView: View {

    private var counterFactory: CounterFactory
    
    public init(counterFactory: CounterFactory) {
        self.counterFactory = counterFactory
    }
    
    public var body: some View {
        HStack {
            NavigationLink(destination: {
                counterFactory.makeView()
            }, label: {
                Text("!")
            })
        }
    }
}
