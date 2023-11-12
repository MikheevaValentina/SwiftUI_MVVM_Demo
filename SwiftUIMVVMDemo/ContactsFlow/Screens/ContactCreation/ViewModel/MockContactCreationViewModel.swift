//
//  Copyright © Valentina Mikheeva, 2023. All rights reserved.
//

import SwiftUI

final class MockContactCreationViewModel {
    @Published private var isPresentAddPhoto = false
}

extension MockContactCreationViewModel: ContactCreationViewModel {
    var presentAddPhoto: Binding<Bool> {
        Binding(get: { [weak self] in
            self?.isPresentAddPhoto ?? false
        }, set: { [weak self] in
            self?.isPresentAddPhoto = $0
        })
    }

    var firstName: Binding<String> {
        Binding(get: { "" }, set: {_ in })
    }

    var lastName: Binding<String> {
        Binding(get: { "" }, set: { _ in })
    }

    func tapOnAddPhoto() {
    }

    func tapOnCancel() {
    }
}
