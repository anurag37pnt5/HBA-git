//
//  RostersView.swift
//  HBA
//
//  Created by Anurag Baral on 3/24/24.
//

import SwiftUI

struct TeamsView: View {
    
    struct Player: Identifiable {
        let id = UUID()
        var name: String
        var position: String
    }
    
    struct Team: Identifiable {
        let id = UUID()
        var name: String
        var players: [Player]
    }
    
    
    private var teams: [Team]
    
    init() {
        teams = [
            Team(name: "Z Ballers", players: [
                Player(name: "Anish Katwal", position: "F"),
                Player(name: "Syed", position: "G"),
                Player(name: "Bipul", position: "G"),
                Player(name: "Raj", position: "C"),
                Player(name: "Anish", position: "G"),
                Player(name: "Pasang", position: "G"),
                Player(name: "Mr.Dad", position: "F"),
                Player(name: "Adam", position: "G")
            ]),
            Team(name: "Kathmandu Kings", players: [
                Player(name: "Romeo KC", position: "G"),
                Player(name: "Sandip Pradhan", position: "F"),
                Player(name: "Nischal Pradhan", position: "C"),
                Player(name: "AJ", position: "G"),
                Player(name: "Gyajan", position: "F"),
                Player(name: "Rahul", position: "G"),
                Player(name: "Saurav", position: "G"),
                Player(name: "Shea", position: "F")
            ]),
            Team(name: "Ankit", players: [
                Player(name: "Ankit Bhattarai", position: "F"),
                Player(name: "Paribesh Maharjan", position: "C"),
                Player(name: "Young Saurav", position: "F"),
                Player(name: "Riken", position: "F"),
                Player(name: "Bibas", position: "G"),
                Player(name: "Avi", position: "G"),
                Player(name: "Yacine", position: "G"),
                Player(name: "Shawn", position: "G")
            ]),
            Team(name: "GSB: Good Shot Bhaiyas", players: [
                Player(name: "Anurag Baral", position: "G"),
                Player(name: "Kush Patel", position: "F"),
                Player(name: "Utsav Kattel", position: "F"),
                Player(name: "Prasanna Basnet", position: "G"),
                Player(name: "Harshul Patel", position: "G"),
                Player(name: "Kaushal Patel", position: "G"),
                Player(name: "Missael", position: "G"),
                Player(name: "Obi Omile", position: "C")
            ]),
            Team(name:"Flying Nimbus", players: [
                Player(name: "Taranbir Randhawa", position: "F"),
                Player(name: "Allen Baniya", position: "G"),
                Player(name: "Kripal Dhakal", position: "G"),
                Player(name: "Rupak", position: "C"),
                Player(name: "Bajj", position: "G"),
                Player(name: "Adrian", position: "G"),
                Player(name: "Sushant", position: "G"),
                Player(name: "Moe", position: "F")
            ]),
            Team(name: "Dunkin Hanumans", players: [
                Player(name: "Parag Baral", position: "G"),
                Player(name: "Krish", position: "F"),
                Player(name: "Lambu", position: "C"),
                Player(name: "Shreyas", position: "G"),
                Player(name: "Manish", position: "G"),
                Player(name: "Shaan", position: "G"),
                Player(name: "Sagar", position: "G"),
                Player(name: "Fred", position: "F")
            ]),
            Team(name: "Team Tibet", players: [
                Player(name: "Parag Baral", position: "Guard"),
                Player(name: "Krish", position: "Guard"),
                Player(name: "Lambu", position: "Guard"),
                Player(name: "Shreyas", position: "Guard"),
                Player(name: "Manish", position: "Guard"),
                Player(name: "Shaan", position: "Guard"),
                Player(name: "Sagar", position: "Guard"),
                Player(name: "Fred", position: "Guard")
            ])
        ]
    }
        
        var body: some View {
            
            ScrollView {
                VStack {
                    ForEach(teams) { team in
                        DisclosureGroup(team.name) {
                            ForEach(team.players) { player in
                                HStack {
                                    Text(player.name)
                                    Spacer()
                                    Text(player.position)
                                }
                                .padding(.vertical, 2)
                            }
                        }
                        .padding()
                    }
                }
            }
        }
}
#Preview {
    TeamsView()
}

