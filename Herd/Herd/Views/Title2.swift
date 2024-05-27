//
//  Title2.swift
//  Herd
//
//  Created by Joshua Austin on 5/27/24.
//

//
//  Title.swift
//  Herd
//
//  Created by Joshua Austin on 5/27/24.
//

import SwiftUI

struct Title2: View {
    var text: String
    var body: some View {
        Text(text)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .fontWeight(.light)
    }
}

#Preview {
    Title2(text: "Status")
}
