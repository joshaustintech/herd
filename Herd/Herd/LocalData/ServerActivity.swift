//
//  ServerActivity.swift
//  Herd
//
//  Created by Joshua Austin on 5/27/24.
//

import Foundation

import Foundation
import SwiftData

@Model
final class ServerActivity: Identifiable {
    var id: UUID
    var week: Date
    var statuses: Int
    var logins: Int
    var registrations: Int
    
    init(week: Double, statuses: Int, logins: Int, registrations: Int) {
        self.id = UUID()
        self.week = Date(timeIntervalSince1970: week)
        self.statuses = statuses
        self.logins = logins
        self.registrations = registrations
    }
}
