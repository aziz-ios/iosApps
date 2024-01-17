//
//  InsetGalleryView.swift
//  Africa
//
//  Created by Aziz Ahmed on 2022-11-26.
//

import SwiftUI

struct InsetGalleryView: View {
    // mark:- properties
    let animal: Animal
    
    
    //mark:- body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            
            
            HStack(alignment: .center, spacing: 15){
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    .cornerRadius(12)
                }//loop
            }//hstack
        } //scroll
    }
}
// mark:- preview

struct InsetGalleryView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetGalleryView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
