//
//  CounterViewFactory.swift
//  CounterInterface
//
//  Created by Taeuk on 2023/11/21.
//

import Foundation
import SwiftUI

public protocol CounterFactory {
    func makeView() -> AnyView
}
