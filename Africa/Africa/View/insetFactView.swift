//
//  insetFactView.swift
//  Africa
//
//  Created by Aziz Ahmed on 2022-11-27.
//

import SwiftUI

struct insetFactView: View {
    //Mark:- properties
    let animal: Animal
    
    
    //Mark:- body
    var body: some View {
        GroupBox {
            TabView{
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }

            }// Tab
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 160, maxHeight: 180)
        }//: Box
    }
}

//mark:- preview

struct insetFactView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        insetFactView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
