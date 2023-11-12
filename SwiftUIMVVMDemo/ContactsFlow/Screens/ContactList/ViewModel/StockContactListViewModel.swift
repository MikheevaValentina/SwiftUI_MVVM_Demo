//
//  Copyright © Valentina Mikheeva, 2023. All rights reserved.
//

import Foundation

final class StockContactListViewModel: ContactListViewModel {
    typealias ContactId = ContactModel.ContactId

    @Published var contacts: [ContactListItem] = []

    private let contactModels = MockContactData.contacts

    init() {
        self.contacts = contactModels.map { contact in
            let name = contact.firsName + " " + (contact.lastName ?? "")
            return ContactListItem(id: contact.id, name: name)
        }
    }
}

//MARK: ContactListViewOutput

extension StockContactListViewModel {
    func tapToContact(with id: UUID) {}

    func tapToPlusContactButton() {}
}
