//
//  MaximDataModel.swift
//  MaximFeature
//
//  Created by Taeuk on 12/19/23.
//

import Foundation

public struct MaximDataModel: Codable {
	public let slip: MaximDataInfoModel
    
    public init(slip: MaximDataInfoModel) {
        self.slip = slip
    }
}

public struct MaximDataInfoModel: Codable {
	public let id: Int
	public let advice: String
    
    public init(id: Int, advice: String) {
        self.id = id
        self.advice = advice
    }
}
