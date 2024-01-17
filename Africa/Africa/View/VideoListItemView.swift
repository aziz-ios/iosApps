//
//  VideoListItem.swift
//  Africa
//
//  Created by Aziz Ahmed on 2022-11-27.
//

import SwiftUI

struct VideoListItemView: View {
    //mark:- properties
    let video: Video
    
    //mark:- body
    var body: some View {
        HStack(spacing: 10) {
            ZStack {
                //it takes as video-cheetah
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                .cornerRadius(9)
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 4)
            }//zstack
            
            VStack(alignment: .leading, spacing: 10){
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                
            }//vstack
        }//: Hstack
    }
}
//mark: preview

struct VideoListItem_Previews: PreviewProvider {
    static let videos: [Video] = Bundle.main.decode("videos.json")
    static var previews: some View {
        VideoListItemView(video: videos[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
