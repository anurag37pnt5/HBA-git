//
//  ContentView.swift
//  HBA
//
//  Created by Anurag Baral on 3/22/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink {
                    HomeView()
                } label: {
                    Text("Login")
                }
                .padding()
                .font(.headline)
                .foregroundColor(.blue)
                .background(Color.white)
                .padding(.horizontal)
                .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.blue, lineWidth: 2))
                
                .padding()
                
                NavigationLink {
                    SignUpView()
                } label: {
                    Text("Sign up")
                }
                .padding()
                .font(.headline)
                .foregroundColor(.blue)
                .background(Color.white)
                .padding(.horizontal)
                .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.blue, lineWidth: 2))
                
                .padding()
                .padding()
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
