//
//  SwiftUIMemoApp.swift
//  Shared
//
//  Created by Kwaneung Kim on 2022/07/19.
//

import SwiftUI

@main
struct SwiftUIMemoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
