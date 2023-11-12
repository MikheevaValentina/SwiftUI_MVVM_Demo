//
//  Copyright © Valentina Mikheeva, 2023. All rights reserved.
//

import Foundation

struct MockContactData {
    typealias ContactId = ContactModel.ContactId

    static var contacts: [ContactModel] = [
        .init(id: ContactId(), firsName: "Alexander", lastName: "Pushkin", phone: "8 (885) 555-51-2"),
        .init(id: ContactId(), firsName: "Nikolay", lastName: "Nekrasov", phone: "8 (885) 555-51-2"),
        .init(id: ContactId(), firsName: "Fedor", lastName: "Tyutchev", phone: "8 (885) 555-51-2"),
        .init(id: ContactId(), firsName: "Mikhail", lastName: "Lermontov", phone: "8 (885) 555-51-2"),
        .init(id: ContactId(), firsName: "Lev", lastName: "Tolstoy", phone: "8 (885) 555-51-2")
    ]
}
