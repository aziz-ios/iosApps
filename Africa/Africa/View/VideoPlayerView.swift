//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Aziz Ahmed on 2022-11-27.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    //mark :- properties
    var videoSelected: String
    var videoTitle: String
    
    
    //mark:- body
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4")) {
              //  Text(videoTitle)
            }
            .overlay(
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32,height: 32)
                    .padding(.horizontal, 8)
                , alignment: .topLeading
            )
        }// vstack
        .accentColor(.accentColor)
        .navigationBarTitle(videoTitle, displayMode: .inline)
    }
}
//mark: preview

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
        }
    }
}
