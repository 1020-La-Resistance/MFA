//
//  MaximFactory.swift
//  MaximFeature
//
//  Created by Taeuk on 12/19/23.
//

import Foundation
import SwiftUI

public protocol MaximFactory {
	associatedtype ViewType: View
	func makeView() -> ViewType
}

extension MaximFactory {
    public func makeView() -> AnyView {
        return AnyView(MockView(name: "CounterView"))
    }
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
