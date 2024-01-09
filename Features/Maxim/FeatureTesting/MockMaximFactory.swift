import SwiftUI

import MaximInterface

public class MockMaximFactory: MaximFactory {

    public init() {}
    
    public func makeView() -> AnyView {
        return AnyView(MockView(name: "MaximMockView"))
    }
    
    struct MockView: View {
        @State private var name: String
        
        init(name: String) {
            self.name = name
        }
        
        var body: some View {
            Text(name)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .border(.black, width: 1)
        }
    }

}
