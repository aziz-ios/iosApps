//
//  BaView.swift
//  Itedge
//
//  Created by Aziz Ahmed on 2023-12-26.
//

import SwiftUI

struct BaView: View {
    let baDetails : BaDetail
    @State private var itedge = Itedge()
    let columns = [GridItem(.adaptive(minimum: 150))]


    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    Headline(Txt: "BA Course Detail")
                    LoadImage(Txt: "https://itedge.ca/wp-content/uploads/2022/08/Data-Analyst.jpg", scale: 1)
                    Headline(Txt: baDetails.headline1)
                    Spacer(minLength: 30)
                    About(Txt: baDetails.about1)
                    Spacer(minLength: 30)

                    Headline(Txt: baDetails.headline2)
                    Spacer(minLength: 30)
                    About(Txt: baDetails.about2)
                    Spacer(minLength: 30)

                    Headline(Txt: baDetails.headline3)
                    Spacer(minLength: 30)
                    About(Txt: baDetails.about3)
                    Spacer(minLength: 30)

                    Headline(Txt: "Learning outcome from this course")
                    Spacer(minLength: 30)
                    
                    LazyVGrid(columns: columns,alignment: .leading, spacing: 10){
                        ForEach(itedge.BaSkill, id: \.self){ skill in
                            SkillView(skill: skill)
                                .monospaced()
                        }
                        Spacer(minLength: 30)
                        
                   
                        
                    }
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
            }
        }
    }
}

#Preview {
    let baDetail : [BaDetail] = Bundle.main.decode("baDetail.json")
    return   BaView(baDetails: baDetail[0])
}
