//
//  AddServerButton.swift
//  Herd
//
//  Created by Joshua Austin on 5/27/24.
//

import SwiftUI

struct AddServerButton: View {
    var body: some View {
        HStack() {
            Image(systemName: "plus.circle.fill")
            Button("Add Server") {}
        }
        .foregroundStyle(.link)
        .padding()
    }
}

#Preview {
    AddServerButton()
}
