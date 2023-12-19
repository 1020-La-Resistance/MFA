//My template contents of name Maxim

import SwiftUI

struct MaximView: View {
    
    @StateObject var viewModel: MaximViewModel
	
	init (viewModel: MaximViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
	}
	
	var body: some View {
		VStack {
            Text("\(viewModel.maximValue)")
			Button(action: {
                Task {
                    await viewModel.fetchData()
                }
			}, label: {
				Text("확인")
			})
		}
		
	}
}

