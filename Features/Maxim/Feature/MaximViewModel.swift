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
        self.maximValue = datasource.fetchLocalMaximData()
	}
	
    func fetchData() async {
        let temp = try? await dataSource.fetchRemoteMaximData().slip.advice
        await MainActor.run {
            self.maximValue = temp ?? ""
        }
        
        dataSource.setLocalMaximData(data: temp ?? "")
	}
}
