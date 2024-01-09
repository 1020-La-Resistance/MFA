//
//  MaximFactory.swift
//  MaximFeature
//
//  Created by Taeuk on 12/19/23.
//

import Foundation
import SwiftUI

public protocol MaximFactory {
	func makeView() -> AnyView
}
