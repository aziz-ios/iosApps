//
//  QaView.swift
//  Itedge
//
//  Created by Aziz Ahmed on 2023-12-26.
//

import SwiftUI

struct QaView: View {
    @State private var itedge = Itedge()
    let columns = [GridItem(.adaptive(minimum: 150))]
    let qaDetails : QaDetail
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    Headline(Txt: "QA Course Detail")
                    LoadImage(Txt: "https://itedge.ca/wp-content/uploads/2022/08/quality-assurance-course.jpg.webp", scale: 1)
                    
                    Headline(Txt: qaDetails.headline1)
                    Spacer(minLength: 30)
                    About(Txt: qaDetails.about1)
                    Spacer(minLength: 30)
                    
                    Headline(Txt: qaDetails.headline2)
                    Spacer(minLength: 30)
                    
                    About(Txt: qaDetails.about2)
                    Spacer(minLength: 30)
                    
                    Headline(Txt: qaDetails.headline3)
                    Spacer(minLength: 30)
                    
                    About(Txt: qaDetails.about3)
                    Spacer(minLength: 20)
                    
                    Headline(Txt: "JAVA")
                    Spacer(minLength: 30)
                    
                    LazyVGrid(columns: columns,alignment: .leading, spacing: 10){
                        ForEach(itedge.JavaSkill, id: \.self){ skill in
                            SkillView(skill: skill)
                                .monospaced()
                            
                        }
                    }.padding(.horizontal)
                    Spacer(minLength: 30)
                    
                    Headline(Txt: "SELENIUM WEBDRIVER")
                    Spacer(minLength: 30)
                    
                    LazyVGrid(columns: columns,alignment: .leading, spacing: 10){
                        ForEach(itedge.QaSkill, id: \.self){ skill in
                            SkillView(skill: skill)
                                .monospaced()
                            
                        }
                    }.padding(.horizontal)
                    
                    Spacer(minLength: 30)
                    Headline(Txt: "Why ITEdge ?")
                   
                    
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
                .padding(.all)
            }
            .background(.color1)
            .preferredColorScheme(.light)
        }
        
    }
}

#Preview {
    let qaDetail : [QaDetail] = Bundle.main.decode("qaDetail.json")
    return QaView(qaDetails: qaDetail[0])
}
