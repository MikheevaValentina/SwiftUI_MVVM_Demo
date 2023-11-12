//
//  Copyright © Valentina Mikheeva, 2023. All rights reserved.
//

import SwiftUI

struct ContactCreationView<ViewModel: ContactCreationViewModel>: View {
    @ObservedObject var viewModel: ViewModel

    var body: some View {
        NavigationStack {
            VStack {
                header
                fullName
                Spacer()
            }
            .padding()
            .navigationBarTitle("Contact", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    cancelButton
                }
            }
        }
    }
}

private extension ContactCreationView {
    var header: some View {
        VStack {
            avatar
            addAvatarButton
        }
    }

    var avatar: some View {
        Image(systemName: "person.crop.circle.fill")
            .resizable()
            .frame(width: 150, height: 150)
    }

    var addAvatarButton: some View {
        Button {
            viewModel.tapOnAddPhoto()
        } label: {
            Text("Add photo")
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding()
                .frame(height: 44)
        }
        .background(Color.gray)
        .cornerRadius(20)
    }

    var fullName: some View {
        VStack {
            TextField(text: viewModel.firstName, label: {
                Text("First name")
            })
            TextField(text: viewModel.lastName, label: {
                Text("Last name")
            })
        }
    }

    var cancelButton: some View {
        Button("Cancel", action: viewModel.tapOnCancel)
    }
}

#Preview {
    ContactCreationView(viewModel: MockContactCreationViewModel())
}
