//
//  WhyCard.swift
//  Itedge
//
//  Created by Aziz Ahmed on 2023-12-26.
//

import SwiftUI

struct WhyImage: View {
    var Txt: String
    var scale : CGFloat
    
    var body: some View {
        AsyncImage(url: URL(string: Txt),scale: scale) { image in
            image
                .resizable()
                .scaledToFill()
                .frame(width:50,height: 50)
        } placeholder: {
            ProgressView()
        }
        
    }
    
}
struct WhyText: View {
    var Txt: String
    
    var body: some View {
        Text(Txt)
            .fontWidth(.standard)
            .font(.system(size: 20).bold())
            .multilineTextAlignment(.leading)
    }
}
struct WhyTextBody: View {
    var Txt: String
    
    var body: some View {
        Text(Txt)
            .fontWidth(.standard)
            .multilineTextAlignment(.leading)
    }
}

struct WhyCard: View {
    @State private var itedge = Itedge()
    var image : String
    var text : String
    var Whybody : String
    
    var body: some View {
        
        HStack(alignment: .center) {
            WhyImage(Txt: image, scale: 1)
            VStack(alignment: .leading) {
                WhyText(Txt: text)
                WhyTextBody(Txt: Whybody)
                    .padding(.bottom)
                
            }
        }
    }
}

#Preview {
    WhyCard(image: "https://itedge.ca/wp-content/uploads/2022/04/sec4-icon1.png.webp", text: "Hello Demo ", Whybody: "Hello body Demo")
}
