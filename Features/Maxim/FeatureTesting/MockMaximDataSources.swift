//
//  MockMaximDataSources.swift
//  MaximTesting
//
//  Created by 김수완 on 1/9/24.
//

import Foundation
import MaximInterface

public class MockMaximDataSources: MaximDataSource {
    
    private var localMaximData: String = "none"
    
    private let mockModel = MaximDataModel(
        slip: MaximDataInfoModel(
            id: 1,
            advice: "test"
        )
    )
    
    public init() {
        
    }
    
    public func fetchRemoteMaximData() async throws -> MaximDataModel {
        return mockModel
    }
    
    public func setLocalMaximData(data: String) {
        self.localMaximData = data
    }
    
    public func fetchLocalMaximData() -> String {
        return localMaximData
    }
    
    
}
