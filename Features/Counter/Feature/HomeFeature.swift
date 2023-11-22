

import SwiftUI

struct CounterView: View {

	@StateObject var viewModel: CounterViewModelTest
	
	init(viewModel: CounterViewModelTest) {
		_viewModel = StateObject(wrappedValue: viewModel)
	}
	
	var body: some View {
		HStack {
			Button {
				viewModel.increaseCount()
			} label: {
				Text("up")
			}
			
			Text("\(viewModel.countTest)")
			
			Button {
				viewModel.decreaseCount()
			} label: {
				Text("down")
			}
		}
	}
}
