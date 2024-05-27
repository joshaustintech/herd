//
//  Subtitle.swift
//  Herd
//
//  Created by Joshua Austin on 5/27/24.
//

import SwiftUI

struct Subtitle: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.subheadline)
            .foregroundStyle(.secondary)
    }
}

#Preview {
    Subtitle(text: "foojay.social")
}
