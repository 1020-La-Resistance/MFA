//
//  MaximDataSource.swift
//  MaximFeature
//
//  Created by Taeuk on 12/19/23.
//

import Foundation

public protocol MaximDataSource {
	func fetchMaximData() async throws -> MaximDataModel
}
