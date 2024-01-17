//
//  CoverImageView.swift
//  Africa
//
//  Created by Aziz Ahmed on 2022-11-26.
//

import SwiftUI

struct CoverImageView: View {
    //mark: properties
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
    
    //mark: body
    var body: some View {
        
        TabView{
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            }//: Loop
        }// tab
        .tabViewStyle(PageTabViewStyle())
        
        
     }
}

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
