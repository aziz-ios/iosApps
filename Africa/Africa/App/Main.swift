//
//  Main.swift
//  Africa
//
//  Created by Aziz Ahmed on 2022-11-26.
//

import SwiftUI

struct Main: View {
    var body: some View {
        TabView{
            ContentView()
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("Browse")
                }
            VideoListView()
                .tabItem{
                    Image(systemName: "play.rectangle")
                    Text("Watch")
                }
            MapView()
                .tabItem {
                    Image(systemName: "map")
                    Text("Locations")
                }
            GalleryView()
                .tabItem{
                    Image(systemName: "photo")
                    Text("Gallery")
                }
            
        } //tab
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
