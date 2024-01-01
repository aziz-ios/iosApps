//
//  HomeView.swift
//  Itedge
//
//  Created by Aziz Ahmed on 2023-12-25.
//

import SwiftUI

struct Headline: View {
    var Txt: String
    
    var body: some View {
        Text(Txt)
            .foregroundStyle(.orange)
            .font(.title2)
    }
}

struct Description: View {
    var Txt: String
    
    var body: some View {
        Text(Txt)
            .foregroundStyle(.orange)
            .font(.title3)
    }
}

struct About: View {
    var Txt: String
    
    var body: some View {
        Text(Txt)
            .foregroundStyle(.black)
            .font(.headline)
    }
}

struct LoadImage: View {
    var Txt: String
    var scale : CGFloat
    
    var body: some View {
        AsyncImage(url: URL(string: Txt),scale: scale) { image in
            image
                .resizable()
                .scaledToFill()
        } placeholder: {
            ProgressView()
        }
        
    }
    
}

struct Course: View {
    var Txt: String
    
    var body: some View {
        Text(Txt)
            .multilineTextAlignment(.leading)
    }
}
struct link: View {
    let qaDetail : [QaDetail] = Bundle.main.decode("qaDetail.json")
    let baDetail : [BaDetail] = Bundle.main.decode("baDetail.json")
    let daDetail : [DaDetail] = Bundle.main.decode("daDetail.json")
    
    var body: some View {
        NavigationLink(
            
            destination: QaView(qaDetails: qaDetail[0]),
         
            label: {
                Text("QA Automation Course")
            })
        NavigationLink(
        
            destination: BaView(baDetails: baDetail[0]),
       
            label: {
                Text("Business Analysis Course")
            })
        NavigationLink(
        
            destination: DaView(daDetails: daDetail[0]),
          
            label: {
                Text("Data Analysis Course")
            })
    }
}

struct HomeView: View {
    let homes : Home
    
    var body: some View {
        NavigationStack {
            ScrollView {
                
                VStack {
                    Text("ITEDGE CA")
                        .foregroundColor(Color.orange)
                        .multilineTextAlignment(.center)
                    
                    CarouselView()
                        .padding(.bottom)
                    
                    Headline(Txt: homes.headline)
                    Divider()
                    
                    LoadImage(Txt: "https://itedge.ca/wp-content/uploads/2022/04/sec2-img.png.webp", scale: 2)
                    
                    Spacer(minLength: 20)
                    
                    Description(Txt: homes.description)
                    
                    Divider()
                    
                    About(Txt: homes.about)
                    
                    Spacer(minLength: 20)
                    
                    link()
                    Course(Txt: homes.ios)
                    
                }
                
            } .background(.color1)
                .preferredColorScheme(.light)
        }
        
    }
}

#Preview {
    let home:[Home] = Bundle.main.decode("homes.json")
    return   HomeView(homes: home[0])
}
