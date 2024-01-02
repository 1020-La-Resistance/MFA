//
//  MockCounterFactory.swift
//  CounterTesting
//
//  Created by MinhyunCho on 1/2/24.
//

import Foundation
import CounterInterface
import SwiftUI

public class MockCounterFactory: CounterFactory {
    
    public init() {}
    
    public func makeView() -> AnyView {
        return AnyView(MockView(name: "CounterMockView"))
    }
    
    struct MockView: View {
        @State private var name: String
        
        init(name: String) {
            self.name = name
        }
        
        var body: some View {
            Text(name)
                .border(.black, width: 1)
        }
    }
}
