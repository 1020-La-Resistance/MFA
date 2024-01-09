//
//  MaximDataSourceImplement.swift
//  MaximFeature
//
//  Created by Taeuk on 12/19/23.
//

import Foundation
import MaximInterface

public class MaximDataSourceImplement: MaximDataSource {
		
    public init() {
        
    }
    
	public func fetchRemoteMaximData() async throws -> MaximDataModel {
		
		let url = "https://api.adviceslip.com/advice"
		
        guard let url = URL(string: url) else {
            throw URLError(.badURL)
        }
		
		let (data, _) = try await URLSession.shared.data(from: url)
		let returnData = try JSONDecoder().decode(MaximDataModel.self, from: data)
		return returnData
	}
    
    public func fetchLocalMaximData() -> String {
        return UserDefaults.standard.string(forKey: "MaximLocalData") ?? "none"
    }
    
    public func setLocalMaximData(data: String) {
        
        UserDefaults.standard.setValue(data, forKey: "MaximLocalData")
    }
}
