//
//  Created by Valentina Mikheeva on 12.11.2023.
//

import SwiftUI

@main
struct SwiftUIMVVMDemoApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationStack {
                    ContactListAssembly.view()
                }
                .tabItem { Label("Contacts", systemImage: "person.crop.circle") }
                NavigationStack {
                    ContactInfoAssembly.view()
                }
                .tabItem { Label("Contact info", systemImage: "info.circle") }
            }
        }
    }
}
