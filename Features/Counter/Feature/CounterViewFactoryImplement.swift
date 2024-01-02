//
//  CounterViewFactoryImplement.swift
//  CounterInterface
//
//  Created by Taeuk on 2023/11/21.
//

import Foundation
import CounterInterface
import SwiftUI

public class CounterViewFactoryImplement: CounterFactory {
	
	public init() {}
	
	public func makeView() -> AnyView {
		return AnyView(
            CounterView(viewModel: CounterViewModel(dataSource: CounterDataSourceImplement()))
        )
	}
}
