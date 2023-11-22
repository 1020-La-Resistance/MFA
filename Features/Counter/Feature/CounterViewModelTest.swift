//
//  CounterViewModelTest.swift
//  CounterInterface
//
//  Created by Taeuk on 2023/11/21.
//

import Foundation

class CounterViewModelTest: ObservableObject {
	
	@Published var countTest: Int
	
	init(count: Int) {
		self.countTest = count
	}
	
	func increaseCount() {
		countTest += 1
	}
	
	func decreaseCount() {
		countTest -= 1
	}
}
