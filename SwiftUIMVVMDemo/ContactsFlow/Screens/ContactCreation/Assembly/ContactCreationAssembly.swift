//
//  Copyright © Valentina Mikheeva, 2023. All rights reserved.
//

import SwiftUI

struct ContactCreationAssembly {
    static func view() -> some View {
        let viewModel = StockContactCreationViewModel()
        return ContactCreationView(viewModel: viewModel)
    }
}
