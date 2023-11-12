//
//  Copyright © Valentina Mikheeva, 2023. All rights reserved.
//

import SwiftUI

struct ContactListItem {
    let id: UUID
    let name: String
}

struct ContactListCell: View {
    let item: ContactListItem
    let action: (UUID) -> Void

    var body: some View {
        Button(action: {
            action(item.id)
        }, label: {
            HStack {
                Text(item.name)
                    .font(.title3)
                Spacer()
            }
        })
    }
}
