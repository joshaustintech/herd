//
//  Item.swift
//  Herd
//
//  Created by Joshua Austin on 5/27/24.
//

import Foundation
import SwiftData

@Model
final class Server {
    var id: UUID
    var serverDomain: String
    var serverTitle: String
    var serverDescription: String
    var activeMonthlyUsers: Int
    var updatedTimestamp: Date
    
    init(serverDomain: String, serverTitle: String, serverDescription: String, activeMonthlyUsers: Int) {
        self.id = UUID()
        self.serverDomain = serverDomain
        self.serverTitle = serverTitle
        self.serverDescription = serverDescription
        self.activeMonthlyUsers = activeMonthlyUsers
        self.updatedTimestamp = Date.now
    }
}
