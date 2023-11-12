//
//  Copyright © Valentina Mikheeva, 2023. All rights reserved.
//

import SwiftUI

struct ContactInfoView<ViewModel: ContactInfoViewModel>: View {
    @ObservedObject var viewModel: ViewModel

    var body: some View {
        VStack(spacing: 24) {
            avatar
            phone
            Spacer()
        }
        .padding()
        .navigationBarTitleDisplayMode(.inline)
    }
}

private extension ContactInfoView {
    var avatar: some View {
        Text(viewModel.abbreviation)
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding(32)
            .background(
                Circle()
                    .fill(Color.gray)
            )
    }

    var phone: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Phone")
                    .font(.title3)
                Text(viewModel.phone)
                    .font(.caption)
            }
            Spacer()
        }
    }
}

#Preview {
    ContactInfoView(viewModel: MockContactInfoViewModel())
}
