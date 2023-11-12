//
//  Copyright © Valentina Mikheeva, 2023. All rights reserved.
//

import SwiftUI

struct ContactInfoAssembly {
    @ViewBuilder
    static func view(with contact: ContactModel? = nil) -> some View {
        if let contact{
            let viewModel = StockContactInfoViewModel(contact: contact)
            ContactInfoView(viewModel: viewModel)
        } else {
            let viewModel = MockContactInfoViewModel()
            ContactInfoView(viewModel: viewModel)
        }
    }
}
