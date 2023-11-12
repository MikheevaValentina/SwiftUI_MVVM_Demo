//
//  Copyright © Valentina Mikheeva, 2023. All rights reserved.
//

import SwiftUI

typealias ContactListViewModel = ContactListViewInput & ContactListViewOutput

protocol ContactListViewInput: ObservableObject {
    var contacts: [ContactListItem] { get }
}

protocol ContactListViewOutput: ObservableObject {
    func tapToContact(with id: UUID)
    func tapToPlusContactButton()
}
