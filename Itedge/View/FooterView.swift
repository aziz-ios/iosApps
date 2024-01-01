//
//  FooterView.swift
//  Itedge
//
//  Created by Aziz Ahmed on 2023-12-27.
//

import SwiftUI

struct IitedgeIcon: View {
    let home:[Home] = Bundle.main.decode("homes.json")
    
    var body: some View {
        NavigationLink(
            /// 2
            destination: HomeView(homes: home[0]),
            /// 3
            label: {
                Image("icon")
                    .resizable()
                    .frame(width: 70, height: 45)
                
            })
    }
}

struct ContactText: View {
    var Txt: String
    
    var body: some View {
        Text(Txt)
            .font(.system(size: 19))
    }
}

struct FooterView: View {
    var body: some View {
        VStack() {
            Spacer()
            Headline(Txt: "Contact US")
                .padding()

            VStack(alignment: .leading) {
                
                ContactText(Txt: "☎️: +1 437-254-7868")
                
                ContactText(Txt: "📧:Info@itedge.ca")
                
                ContactText(Txt: "📍:Mississauga, Ontario")
                
            }
            ContactText(Txt: "We Are Social ❤️")
                .padding()
            
            Text("[Facebook](https://www.facebook.com/ITedge.ca?paipv=0&eav=AfY-sb1UnTsrLc3DUCGM8ycdn1x1sDGIiUqvSRuLUWXlzBazczAupgnYb8e0soNQv_k)")
                .font(.system(size: 20))
                .padding(1)
            Text("[Linkedln](https://www.linkedin.com/company/itedge.ca/)")
                .font(.system(size: 20))
                .padding(1)
            Text("[Instagram](https://www.instagram.com/itegde.ca/)")
                .font(.system(size: 20))
                .padding(1)

            Text("[Twitter](https://twitter.com/itedge.ca)")
                .font(.system(size: 20))
                .padding(1)

            
            
        
                Image("icon")
                    .resizable()
                .frame(width: 240, height: 75)
            
            
            
        }
        .padding([.all])
        .background(.color1)
        .preferredColorScheme(.light)
        
    }
}

#Preview {
    FooterView()
}
