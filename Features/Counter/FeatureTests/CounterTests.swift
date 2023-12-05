
import XCTest
import CounterTesting
@testable import CounterFeature

class CounterTests: XCTestCase {

	let viewModel = CounterViewModel(dataSource: MockCounterDataSource())
	
	func testIncrease() throws {
		viewModel.increaseCount()
		XCTAssertEqual(viewModel.countValue, 1)
	}
	
	func testDecrease() throws {
		viewModel.decreaseCount()
		XCTAssertEqual(viewModel.countValue, -1)
	}
	
}
