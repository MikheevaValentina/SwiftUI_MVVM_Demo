//
//  Copyright © Valentina Mikheeva, 2023. All rights reserved.
//

import SwiftUI

struct ContactListAssembly {
    static func view() -> some View {
        let viewModel = StockContactListViewModel()
        return ContactListView(viewModel: viewModel)
    }
}
