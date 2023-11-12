//
//  Copyright © Valentina Mikheeva, 2023. All rights reserved.
//

import SwiftUI

final class StockContactCreationViewModel {
    @Published private var isPresentAddPhoto = false
    @Published private var firstUserName = ""
    @Published private var lastUserName = ""
}

extension StockContactCreationViewModel: ContactCreationViewModel {
    var presentAddPhoto: Binding<Bool> {
        Binding(get: { [weak self] in
            self?.isPresentAddPhoto ?? false
        }, set: { [weak self] in
            self?.isPresentAddPhoto = $0
        })
    }

    var firstName: Binding<String> {
        Binding(get: { [weak self] in
            self?.firstUserName ?? ""
        }, set: { [weak self] newValue in
            self?.firstUserName = newValue
        })
    }

    var lastName: Binding<String> {
        Binding(get: { [weak self] in
            self?.lastUserName ?? ""
        }, set: { [weak self] newValue in
            self?.lastUserName = newValue
        })
    }

    func tapOnAddPhoto() {
        isPresentAddPhoto = true
    }

    func tapOnCancel() {
    }
}
