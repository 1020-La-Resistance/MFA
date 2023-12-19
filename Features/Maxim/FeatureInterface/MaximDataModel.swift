//
//  MaximDataModel.swift
//  MaximFeature
//
//  Created by Taeuk on 12/19/23.
//

import Foundation

public struct MaximDataModel: Codable {
	public let slip: MaximDataInfoModel
}

public struct MaximDataInfoModel: Codable {
	public let id: Int
	public let advice: String
}
