//
//  AnimalGridItemView.swift
//  Africa
//
//  Created by Aziz Ahmed on 2022-12-03.
//

import SwiftUI

struct AnimalGridItemView: View {
    //mark properties
    let animal:Animal
    
    //mark: body
    
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct AnimalGridItemView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        AnimalGridItemView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
