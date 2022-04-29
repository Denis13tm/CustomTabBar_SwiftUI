//
//  CustomTabBar_SwiftUIApp.swift
//  CustomTabBar_SwiftUI
//
//  Created by Otabek Tuychiev on 29/04/2022.
//

import SwiftUI

@main
struct CustomTabBar_SwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
