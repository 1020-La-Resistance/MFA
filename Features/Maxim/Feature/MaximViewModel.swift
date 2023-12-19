//
//  MaximViewModel.swift
//  MaximFeature
//
//  Created by Taeuk on 12/12/23.
//

import Foundation
import MaximInterface

class MaximViewModel: ObservableObject {
	
	private var dataSource: MaximDataSource
	
	init(datasource: MaximDataSource) {
		self.dataSource = datasource
	}
	
	func fetchData() {
		dataSource.fetchMaximData()
	}
}
