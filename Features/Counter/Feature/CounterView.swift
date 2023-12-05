

import SwiftUI

struct CounterView: View {

	@StateObject var viewModel: CounterViewModel
	
	init(viewModel: CounterViewModel) {
		_viewModel = StateObject(wrappedValue: viewModel)
	}
	
	var body: some View {
		HStack {
			Button {
				viewModel.increaseCount()
			} label: {
				Text("up")
			}
			
			Text("\(viewModel.countValue)")
			
			Button {
				viewModel.decreaseCount()
			} label: {
				Text("down")
			}
		}
	}
}
