//
//  CoursesView.swift
//  Itedge
//
//  Created by Aziz Ahmed on 2023-12-25.
//

import SwiftUI

struct CoursesView: View {
    let qaDetail : [QaDetail] = Bundle.main.decode("qaDetail.json")
    let baDetail : [BaDetail] = Bundle.main.decode("baDetail.json")
    let daDetail : [DaDetail] = Bundle.main.decode("daDetail.json")
    
    let courseswe : CoursesWe
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    Headline(Txt: "Courses We offer")
                    
                    LoadImage(Txt: "https://itedge.ca/wp-content/uploads/2022/08/quality-assurance-course.jpg.webp", scale: 1)
                    
                    Description(Txt: "Quality Analyst Course")
                    Spacer(minLength: 28)
                    About(Txt: courseswe.QualityAnalystCourse)
                    
                    Spacer(minLength: 20)
                    
                    NavigationLink {
                        QaView(qaDetails: qaDetail[0])
                    } label: {
                        Text("QA Course Details")
                    }
                    .font(.callout)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.orange)
                    .clipShape(Capsule())
                    
                    Divider()
                    
                    LoadImage(Txt: "https://itedge.ca/wp-content/uploads/2022/08/Data-Analyst.jpg", scale: 1)
                    Description(Txt: "Business Analyst")
                    Spacer(minLength: 28)
                    About(Txt: courseswe.BusinessAnalystCourse)
                    
                    NavigationLink {
                        BaView(baDetails: baDetail[0])
                    } label: {
                        Text("BA Course Details")
                    }
                    .font(.callout)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.orange)
                    .clipShape(Capsule())
                    
                    Divider()
                    Divider()
                    
                    LoadImage(Txt: "https://itedge.ca/wp-content/uploads/2022/09/Quality-Analyst.jpg", scale: 1)
                    Description(Txt: "Data Analyst")
                    Spacer(minLength: 28)
                    About(Txt: courseswe.DataAnalystCourse)
                    
                    NavigationLink {
                        DaView(daDetails: daDetail[0])
                    } label: {
                        Text("DA Course Details")
                    }
                    .font(.callout)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.orange)
                    .clipShape(Capsule())
                    Divider()
                    
                    LoadImage(Txt: "https://itedge.ca/wp-content/uploads/2022/09/IOS-Development-Course.jpg", scale: 1)
                    Description(Txt: "IOS Development")
                    Spacer(minLength: 28)
                    About(Txt: courseswe.BusinessAnalystCourse)
                    Divider()
                    
                }
            }
            .preferredColorScheme(.light)
            .background(.color1)
        }
        
    }
}

#Preview {
    let coursewe:[CoursesWe] = Bundle.main.decode("courseswe.json")
    
    return CoursesView(courseswe: coursewe[0])
}
