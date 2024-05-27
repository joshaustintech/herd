//
//  Title.swift
//  Herd
//
//  Created by Joshua Austin on 5/27/24.
//

import SwiftUI

struct Title: View {
    var text: String
    var body: some View {
        Text(text)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .bold()
    }
}

#Preview {
    Title(text: "Mastodon")
}
