//
//  DryverrCarApp.swift
//  DryverrCar
//
//  Created by Daval Cato on 3/8/23.
//

import SwiftUI

@main
struct DryverrCarApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
