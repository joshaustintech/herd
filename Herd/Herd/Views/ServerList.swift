//
//  Navigation.swift
//  Herd
//
//  Created by Joshua Austin on 5/27/24.
//

import SwiftUI

struct ServerList: View {
    var servers: [Server]
    var body: some View {
        NavigationSplitView {
            List {
                ForEach(servers) { server in
                    NavigationLink {
                        Spacer()
                    } label: {
                        ServerRow(server: server)
                    }
                }
                AddServerButton()
            }
            .navigationTitle("Servers")
        } detail: {
            Text("Select or add a server.")
        }
    }
}

#Preview {
    let servers: [Server] = [
        Server(serverDomain: "mastodon.social", serverTitle: "Mastodon", serverDescription: "The original server operated by the Mastodon gGmbH non-profit", activeMonthlyUsers: 123122),
        Server(serverDomain: "foojay.social", serverTitle: "Foojay, the Friends Of OpenJDK", serverDescription: "This Foojay.social Mastodon server is aimed at anyone active in the OpenJDK, Java, JavaFX, JVM, and related communities.", activeMonthlyUsers: 69)
    ]
    return ServerList(servers: servers)
}
