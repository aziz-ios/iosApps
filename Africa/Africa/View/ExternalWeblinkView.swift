//
//  ExternalWeblinkView.swift
//  Africa
//
//  Created by Aziz Ahmed on 2022-11-27.
//

import SwiftUI

struct ExternalWeblinkView: View {
    //mark:-  properties
    
    let animal: Animal
    
    //mark:- Body
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group{
                    Image(systemName: "arrow.up.right.square")
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https//wikipedia.org"))!)
                }
                .foregroundColor(.accentColor)
            }//hstack
        }// box
    }
}
//mark:- view

struct ExternalWeblinkView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        ExternalWeblinkView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
