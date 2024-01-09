import Foundation
import CounterInterface
import MaximInterface

public class MainViewModel: ObservableObject {
    
    @Published var countValue: Int
    @Published var maximStringValue: String
    private var counterDataSource: CounterDataSource
    private var maximDataSource: MaximDataSource
    
    public init(counterDataSource: CounterDataSource,
                maximDataSource: MaximDataSource) {
        self.counterDataSource = counterDataSource
        self.countValue = counterDataSource.fetchCount()
        self.maximDataSource = maximDataSource
        self.maximStringValue = maximDataSource.fetchLocalMaximData()
    }
    
    func fetchNewData() {
        self.countValue = counterDataSource.fetchCount()
        self.maximStringValue = maximDataSource.fetchLocalMaximData()
    }

}
