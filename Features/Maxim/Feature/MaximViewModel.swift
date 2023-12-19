//
//  MaximViewModel.swift
//  MaximFeature
//
//  Created by Taeuk on 12/12/23.
//

import Foundation
import MaximInterface

class MaximViewModel: ObservableObject {
	
    @Published var maximValue: String = ""
	private var dataSource: MaximDataSource
	
	init(datasource: MaximDataSource) {
		self.dataSource = datasource
	}
	
    func fetchData() async {
        let temp = try? await dataSource.fetchMaximData().slip.advice
        await MainActor.run {
            self.maximValue = temp ?? ""
        }
	}
}
