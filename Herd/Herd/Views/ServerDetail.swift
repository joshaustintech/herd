//
//  ServerDetail.swift
//  Herd
//
//  Created by Joshua Austin on 5/27/24.
//

import SwiftUI
import Charts

struct ServerDetail: View {
    var server: Server
    var serverActivities: [ServerActivity]
    
    private let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .none
        return formatter
    }()
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Title(text: server.serverTitle)
            Subtitle(text: server.serverDomain)
            ScrollView {
                Spacer(minLength: 24)
                VStack {
                    Text("\(server.activeMonthlyUsers)")
                        .font(.largeTitle)
                        .fontWeight(.light)
                    Subtitle(text: "Monthly Active Users")
                }
                .padding()
                .foregroundColor(.white)
                .background(.purple.gradient)
                .cornerRadius(8.0)
                VStack(alignment: .leading) {
                    
                    Spacer(minLength: 24)
                    
                    Title2(text: "Description")
                    Text(server.serverDescription)
                    
                    Spacer(minLength: 24)
                    
                    Title2(text: "Logins")
                    Chart {
                        ForEach (serverActivities) { activity in
                            LineMark(
                                x: .value("Date", self.dateFormatter.string(from: activity.week)),
                                y: .value("Logins", activity.logins)
                            )
                        }
                    }
                    
                    Spacer(minLength: 24)
                    
                    Title2(text: "Statuses")
                    Chart {
                        ForEach (serverActivities) { activity in
                            LineMark(
                                x: .value("Date", self.dateFormatter.string(from: activity.week)),
                                y: .value("Statuses", activity.statuses)
                            )
                        }
                    }
                    
                    Spacer(minLength: 24)
                    
                    Title2(text: "Registrations")
                    Chart {
                        ForEach (serverActivities) { activity in
                            LineMark(
                                x: .value("Date", self.dateFormatter.string(from: activity.week)),
                                y: .value("Statuses", activity.registrations)
                            )
                        }
                    }
                }
            }
        }
        .frame(maxWidth:.infinity, maxHeight:.infinity, alignment:.topLeading)
        .padding()
        
    }
}

#Preview {
    let server = Server(serverDomain: "mastodon.social", serverTitle: "Mastodon", serverDescription: "The original server operated by the Mastodon gGmbH non-profit", activeMonthlyUsers: 123122)
    
    let serverActivities: [ServerActivity] = [
        ServerActivity(week: 1571616000.0, statuses: 117892, logins: 18763, registrations: 3107),
        ServerActivity(week: 1572220800.0, statuses: 119932, logins: 19164, registrations: 3188),
        ServerActivity(week: 1572825600.0, statuses: 116227, logins: 19739, registrations: 2926),
        ServerActivity(week: 1572825600.0, statuses: 309722, logins: 44433, registrations: 26165),
        ServerActivity(week: 1573430400.0, statuses: 270615, logins: 35388, registrations: 8781),
        ServerActivity(week: 1574035200.0, statuses: 244447, logins: 28820, registrations: 4425),
        ServerActivity(week: 1574640000.0, statuses: 37125, logins: 14239, registrations: 542)
    ]
    
    return ServerDetail(server: server, serverActivities: serverActivities)
}
