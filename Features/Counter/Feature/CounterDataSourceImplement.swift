//
//  CounterDataSourceImplement.swift
//  CounterInterface
//
//  Created by Minhyun Cho on 12/5/23.
//

import Foundation
import CounterInterface

class CounterDataSourceImplement: CounterDataSource {
    
    func fetchCount() -> Int {
        print("Fetch ::", UserDefaults.standard.integer(forKey: "CounterValues"))
        return UserDefaults.standard.integer(forKey: "CounterValues")
    }
    
    func setCount(count: Int) {
        print(count)
        UserDefaults.standard.setValue(count, forKey: "CounterValues")
    }
}
