//
//  HerdApp.swift
//  Herd
//
//  Created by Joshua Austin on 5/27/24.
//

import SwiftUI
import SwiftData

@main
struct HerdApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Server.self,
            ServerActivity.self
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
