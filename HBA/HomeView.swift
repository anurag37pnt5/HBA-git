//
//  HomeView.swift
//  HBA
//
//  Created by Anurag Baral on 3/22/24.
//

import SwiftUI

struct HomeView: View {
    @State private var selectedSegment = "ROSTERS"
    
    var body: some View {
        VStack{
            HStack{
                Picker("Options",
                       selection: $selectedSegment) {
                    Text("SCHEDULE").tag("SCHEDULE")
                    Text("TEAMS").tag("TEAMS")
                    Text("NEWS").tag("NEWS")
                    Text("STATS").tag("STATS")
                }.pickerStyle(SegmentedPickerStyle())
                    .padding()
            }
            
            switch selectedSegment {
            case "SCHEDULE":
                ScheduleView()
            case "TEAMS":
                TeamsView()
//            case "NEWS":
//                NewsView()
//            case "STATS":
//                StatsView()
            default:
                EmptyView()
            }
    
            
        
            
            
            Spacer()
        }
    }
}

#Preview {
    HomeView()
}
