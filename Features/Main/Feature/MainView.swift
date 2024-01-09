//
//  MainView.swift
//  MainFeature
//
//  Created by MinhyunCho on 1/2/24.
//

import SwiftUI

import CounterInterface
import MaximInterface

public struct MainView: View {

    
    @StateObject private var mainViewModel: MainViewModel
    
    private var counterFactory: CounterFactory
    private var maximFactory: MaximFactory
    
    public init(
        mainViewModel: MainViewModel,
        counterFactory: CounterFactory,
        maximFactory: MaximFactory
    ) {
        self._mainViewModel = StateObject(wrappedValue: mainViewModel)
        self.counterFactory = counterFactory
        self.maximFactory = maximFactory
    }
    
    public var body: some View {
        VStack {
            Text(mainViewModel.maximStringValue)
                .font(.system(size: 30))
            
            Text(String(mainViewModel.countValue))
                .font(.system(size: 30))
            
            NavigationLink(destination: {
                counterFactory.makeView()
            }, label: {
                Text("Go Counter")
            })
            NavigationLink(destination: {
                maximFactory.makeView()
            }, label: {
                Text("Go Maxim")
            })
        }
        .onAppear {
            mainViewModel.fetchNewData()
        }
    }
}
