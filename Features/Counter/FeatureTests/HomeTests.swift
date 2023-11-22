
import XCTest
@testable import CounterFeature

class CounterTests: XCTestCase {

	let viewModel = CounterViewModelTest(count: 0)
	
	func testIncrease() throws {
		viewModel.increaseCount()
		XCTAssertEqual(viewModel.countTest, 1)
	}
	
	func testDecrease() throws {
		viewModel.decreaseCount()
		XCTAssertEqual(viewModel.countTest, -1)
	}
	
}
