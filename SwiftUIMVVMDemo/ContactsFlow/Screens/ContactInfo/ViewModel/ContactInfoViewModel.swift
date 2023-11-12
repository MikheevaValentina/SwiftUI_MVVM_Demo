//
//  Copyright © Valentina Mikheeva, 2023. All rights reserved.
//

import SwiftUI

typealias ContactInfoViewModel = ContactInfoViewInput

protocol ContactInfoViewInput: ObservableObject {
    var abbreviation: String { get }
    var phone: String { get }
}
