//
//  MaximDataSource.swift
//  MaximFeature
//
//  Created by Taeuk on 12/19/23.
//

import Foundation

public protocol MaximDataSource {
	func fetchRemoteMaximData() async throws -> MaximDataModel
    func setLocalMaximData(data: String)
    func fetchLocalMaximData() -> String
}
