//
//  ContentView.swift
//  Itedge
//
//  Created by Aziz Ahmed on 2023-12-25.
//

import SwiftUI

struct ContentView: View {
    let home:[Home] = Bundle.main.decode("homes.json")
    let about: [Aboutus] = Bundle.main.decode("aboutus.json")
    let coursewe:[CoursesWe] = Bundle.main.decode("courseswe.json")
    
    var body: some View {
        TabView {
            HomeView(homes: home[0])
                .tabItem {
                    Label("Home", systemImage: "house.lodge")
                }
            AboutUsView(aboutus: about[0])
                .tabItem {
                    Label("About US", systemImage: "person.crop.circle.dashed")
                }
            CoursesView(courseswe: coursewe[0])
                .tabItem {
                    Label("Courses we Offer", systemImage: "heart.text.square")
                }
            ContactUsView()
                .tabItem {
                    Label("Contact US", systemImage: "phone.bubble.left.fill")
                }
        }
        .preferredColorScheme(.light)
        
    }
}

#Preview {
    ContentView()
}
