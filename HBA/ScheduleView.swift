//
//  ScheduleView.swift
//  HBA
//
//  Created by Anurag Baral on 3/24/24.
//

import SwiftUI

struct ScheduleView: View {
    var body: some View {
        VStack{
            ForEach(1...7, id: \.self) { week in
                HStack {
                    Text("Week \(week)")
                    
                    Menu {
                        // Dropdown info added here
                        Text("Details for Week \(week)")
                    } label: {
                        Label("", systemImage: "chevron.down")
                    }
                }
            }
        }
        Spacer()

    }
}

#Preview {
    ScheduleView()
}
