
import Foundation
import CounterInterface

public class MockCounterDataSource: CounterDataSource {
    
    private var testValue: Int = 0
    
    public init() {}
    
    public func fetchCount() -> Int {
        return self.testValue
    }
    
    public func setCount(count: Int) {
        self.testValue = count
    }
}
