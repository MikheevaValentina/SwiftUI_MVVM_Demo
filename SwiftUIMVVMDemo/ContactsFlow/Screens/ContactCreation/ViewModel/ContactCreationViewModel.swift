//
//  Copyright © Valentina Mikheeva, 2023. All rights reserved.
//

import SwiftUI

typealias ContactCreationViewModel = ContactCreationViewInput & ContactCreationViewOutput

protocol ContactCreationViewInput: ObservableObject {
    var presentAddPhoto: Binding<Bool> { get }
    var firstName: Binding<String> { get }
    var lastName: Binding<String> { get }
}

protocol ContactCreationViewOutput: ObservableObject {
    func tapOnAddPhoto()
    func tapOnCancel()
}
