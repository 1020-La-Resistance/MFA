//
//  CounterDataSource.swift
//  CounterInterface
//
//  Created by Minhyun Cho on 12/5/23.
//

import Foundation

public protocol CounterDataSource {
    func fetchCount() -> Int
    func setCount(count: Int)
}
