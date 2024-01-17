//
//  HeadingView.swift
//  Africa
//
//  Created by Aziz Ahmed on 2022-11-26.
//

import SwiftUI

struct HeadingView: View {
    //mark: properties
    
    var headingImage: String
    var headingText: String
    
    //mark: body
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }
        .padding(.vertical)
    }
}

//mark: preview

struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in pictures")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
