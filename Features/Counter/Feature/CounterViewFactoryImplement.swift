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
	
	public init() {
		
	}
	
	public func makeView(count: Int) -> some View {
		return CounterView(viewModel: CounterViewModelTest(count: count))
	}
}
