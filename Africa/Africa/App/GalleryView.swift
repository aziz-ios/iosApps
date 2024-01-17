//
//  GalleryView.swift
//  Africa
//
//  Created by Aziz Ahmed on 2022-11-26.
//

import SwiftUI

struct GalleryView: View {
    //mark properties
    @State private var SelectedAnimal: String = "Lion"
    let animals: [Animal] = Bundle.main.decode("animals.json")
    let haptics = UIImpactFeedbackGenerator(style: .medium)
    
    
    //simple grid definition
//    let gridLayout: [GridItem] = [
//        GridItem(.flexible()),
//        GridItem(.flexible()),
//        GridItem(.flexible()),
//
//    ]

    //efficient grid
//    let gridLayout: [GridItem] = Array(repeating: GridItem(.flexible()), count: 3)
    
    //dynamic grid layout
    @State private var gridLayout : [GridItem] = [GridItem(.flexible())]
    @State private var gridColumn: Double = 3.0
    
    //mark funtions
    func gridSwitch() {
        gridLayout = Array(repeating: .init(.flexible()), count: Int(gridColumn))
    }
    
    //mark body
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
           
            VStack(alignment: .center, spacing: 30) {
                //mark image
                Image(SelectedAnimal)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 8))
                
                //mark slider
                Slider(value : $gridColumn, in: 2...4, step: 1)
                    .padding(.horizontal)
                    .onChange(of: gridColumn, perform: {
                        value in gridSwitch()
                    })
                //mark: grid
                LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                    ForEach(animals) { item in
                        Image(item.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white, lineWidth: 1))
                            .onTapGesture {
                                SelectedAnimal = item.image
                                haptics.impactOccurred()
                            }
                    }//loop
                }//vgrid
                .animation(.easeIn)
                .onAppear(perform: {
                    gridSwitch()
                })
            }//vstack
            .padding(.horizontal, 10)
            .padding(.vertical, 50)
        }//scroll
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}
//maro preview

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
