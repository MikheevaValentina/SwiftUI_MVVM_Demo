//
//  Copyright © Valentina Mikheeva, 2023. All rights reserved.
//

import SwiftUI

final class MockContactListViewModel {
    @Published var contacts: [ContactListItem] = [
        ContactListItem(id: UUID(), name: "Alexander Pushkin"),
        ContactListItem(id: UUID(), name: "Nikolay Nekrasov"),
        ContactListItem(id: UUID(), name: "Fedor Tyutchev")
    ]
}

extension MockContactListViewModel: ContactListViewModel {
    func tapToContact(with id: UUID) {
    }

    func tapToPlusContactButton() {
    }
}
