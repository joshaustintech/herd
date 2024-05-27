//
//  ServerRow.swift
//  Herd
//
//  Created by Joshua Austin on 5/27/24.
//

import SwiftUI

struct ServerRow: View {
    var server: Server
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(server.serverTitle)
                Text(server.serverDomain)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    return Group {
        ServerRow(server: Server(serverDomain: "mastodon.social", serverTitle: "Mastodon", serverDescription: "The original server operated by the Mastodon gGmbH non-profit", activeMonthlyUsers: 123122))
        ServerRow(server: Server(serverDomain: "foojay.social", serverTitle: "Foojay, the Friends Of OpenJDK", serverDescription: "This Foojay.social Mastodon server is aimed at anyone active in the OpenJDK, Java, JavaFX, JVM, and related communities.", activeMonthlyUsers: 69))
    }
}
