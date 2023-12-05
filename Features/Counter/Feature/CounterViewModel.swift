//
//  CounterViewModelTest.swift
//  CounterInterface
//
//  Created by Taeuk on 2023/11/21.
//

import Foundation
import CounterInterface

class CounterViewModel: ObservableObject {
	
	@Published var countValue: Int
    private var dataSource: CounterDataSource
	
	init(dataSource: CounterDataSource) {
        self.dataSource = dataSource
        self.countValue = dataSource.fetchCount()
	}
	
	func increaseCount() {
        self.countValue += 1
        self.dataSource.setCount(count: self.countValue)
	}
	
	func decreaseCount() {
        self.countValue -= 1
        self.dataSource.setCount(count: self.countValue)
	}
}
