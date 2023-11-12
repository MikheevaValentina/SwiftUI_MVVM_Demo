//
//  Copyright © Valentina Mikheeva, 2023. All rights reserved.
//

import SwiftUI

struct ContactListView<ViewModel: ContactListViewModel>: View {
    @ObservedObject var viewModel: ViewModel

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            ForEach(viewModel.contacts, id: \.id) {
                ContactListCell(item: $0, action: viewModel.tapToContact)
            }
            Spacer()
        }
        .padding()
        .navigationBarTitle("Contacts", displayMode: .large)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                plusContactButton
            }
        }
    }
}

private extension ContactListView {
    var plusContactButton: some View {
        Button(action: {
            viewModel.tapToPlusContactButton()
        }, label: {
            Image(systemName: "plus")
        })
    }
}

#Preview {
    ContactListView(viewModel: MockContactListViewModel())
}
