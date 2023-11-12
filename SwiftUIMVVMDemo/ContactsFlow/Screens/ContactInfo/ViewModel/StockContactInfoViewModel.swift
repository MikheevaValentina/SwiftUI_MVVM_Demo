//
//  Copyright © Valentina Mikheeva, 2023. All rights reserved.
//

import SwiftUI

final class StockContactInfoViewModel: ContactInfoViewModel {
    @Published var abbreviation = ""
    @Published var phone = ""

    init(contact: ContactModel) {
        self.abbreviation = getAbbreviation(name: contact.firsName, lastName: contact.lastName)
        self.phone = contact.phone ?? ""
    }

    private func getAbbreviation(name: String, lastName: String?) -> String {
        var abbreviation = ""

        let firstNameInitial = String(name.prefix(1))
        abbreviation += firstNameInitial

        if let lastName = lastName {
            let lastNameInitial = String(lastName.prefix(1))
            abbreviation += lastNameInitial
        }

        return abbreviation
    }
}
