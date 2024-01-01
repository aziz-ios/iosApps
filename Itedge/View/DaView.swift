//
//  DaView.swift
//  Itedge
//
//  Created by Aziz Ahmed on 2023-12-26.
//

import SwiftUI

struct DaView: View {
    @State private var itedge = Itedge()
    let daDetails : DaDetail
    
    var body: some View {
        
        NavigationStack {
            ScrollView {
                VStack() {
                    Headline(Txt: "Data Analysis Course Details")
                    LoadImage(Txt: "https://itedge.ca/wp-content/uploads/2022/09/Quality-Analyst.jpg", scale: 1)
                    Headline(Txt: daDetails.headline1)
                    Spacer(minLength: 30)
                    About(Txt: daDetails.about1)
                    
                    Headline(Txt: daDetails.headline2)
                    Spacer(minLength: 30)
                    About(Txt: daDetails.about2)
                    Spacer(minLength: 30)
                    
                    Headline(Txt: daDetails.headline3)
                    Spacer(minLength: 30)
                    About(Txt: daDetails.about3)
                    Spacer(minLength: 30)
                    
                    VStack(alignment: .leading) {
                        ForEach(itedge.Daskill,id: \.self) { skill in
                            SkillView(skill: skill)
                            
                        }
                        .padding(.all)
                    }
                    Spacer(minLength: 30)
                    Headline(Txt: "Why ITEDGE ?")
                    WhyView()
                    
                    NavigationLink {
                        ContactUsView()
                    } label: {
                        Text("Enroll In the Course ")
                    }
                    .font(.callout)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.orange)
                    .clipShape(Capsule())
                    
                }
                
            }
            .background(.color1)
            .preferredColorScheme(.light)
        }
    }
}

#Preview {
    let daDetail : [DaDetail] = Bundle.main.decode("daDetail.json")
    return   DaView(daDetails: daDetail[0])
}
