//
//  MaximImplement.swift
//  MaximFeature
//
//  Created by Taeuk on 12/12/23.
//

import Foundation
import MaximInterface
import SwiftUI

public class MaximViewFactoryImplement: MaximFactory {
	
	public init() {}
	
	public func makeView() -> AnyView {
		return AnyView(MaximView(viewModel: MaximViewModel(datasource: MaximDataSourceImplement())))
	}
}
