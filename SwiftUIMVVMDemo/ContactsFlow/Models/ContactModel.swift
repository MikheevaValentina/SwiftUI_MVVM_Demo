//
//  Copyright © Valentina Mikheeva, 2023. All rights reserved.
//

import Foundation

struct ContactModel: Hashable {
    typealias ContactId = UUID

    let id: ContactId
    let firsName: String
    let lastName: String?
    let phone: String?
}
