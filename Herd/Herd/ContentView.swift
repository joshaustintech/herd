//
//  ContentView.swift
//  Herd
//
//  Created by Joshua Austin on 5/27/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var knownServers: [Server]

    var body: some View {
        Text("WIP")
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Server.self, inMemory: true)
}
