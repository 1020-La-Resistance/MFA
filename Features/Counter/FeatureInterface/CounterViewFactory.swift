//
//  CounterViewFactory.swift
//  CounterInterface
//
//  Created by Taeuk on 2023/11/21.
//

import Foundation
import SwiftUI

public protocol CounterFactory {
	associatedtype ViewType: View
	func makeView(count: Int) -> ViewType
}
