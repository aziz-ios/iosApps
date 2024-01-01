//
//  CarouselView.swift
//  Itedge
//
//  Created by Aziz Ahmed on 2023-12-25.
//

import SwiftUI

struct CarouselView: View {
    @State private var itedge = Itedge()

    var body: some View {
        AutoScroller(imageNames: itedge.carouselImage)
    }
}


struct AutoScroller: View {
    var imageNames: [String]
    let timer = Timer.publish(every: 3.0, on: .main, in: .common).autoconnect()
    
    @State private var selectedImageIndex: Int = 0

    var body: some View {
        ZStack {
         

            TabView(selection: $selectedImageIndex) {
                ForEach(0..<imageNames.count, id: \.self) { index in
                    ZStack(alignment: .topLeading) {
                        
                        Image("\(imageNames[index])")
                            .resizable()
                            .tag(index)
                            .frame(width: 410, height: 200)
                        
                    }
                    .shadow(radius: 20)
                }
            }
            .frame(height: 300)
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .ignoresSafeArea()

           
            HStack {
                ForEach(0..<imageNames.count, id: \.self) { index in
                    
                    Capsule()
                        .fill(Color.black.opacity(selectedImageIndex == index ? 1 : 0.33))
                        .frame(width: 35, height: 8)
                        .onTapGesture {
                            
                            selectedImageIndex = index
                        }
                }
                .offset(y: 130)
            }
        }
        .onReceive(timer) { _ in
            withAnimation(.default) {
                selectedImageIndex = (selectedImageIndex + 1) % imageNames.count
            }
        }
    }
}

#Preview {
    CarouselView()
}
