//
//  AboutUsView.swift
//  Itedge
//
//  Created by Aziz Ahmed on 2023-12-25.
//

import SwiftUI

struct Courses1: View {
    var Txt: String
    
    var body: some View {
        Text(Txt)
            .foregroundStyle(.black)
            .font(.headline)
    }
}

struct AboutUsView: View {
    let aboutus : Aboutus
    
    var body: some View {
     
        ScrollView {
            VStack {
                Headline(Txt: "About ITEDGE")
                
                Spacer(minLength: 25)
   
                LoadImage(Txt: "https://itedge.ca/wp-content/uploads/2022/08/GURANTEED-PLACEMENT-1024x678.jpg.webp", scale: 1)
                
                Spacer(minLength: 25)
                About(Txt: aboutus.about)
                Divider()
                Spacer(minLength: 25)

                Headline(Txt: "What we do ?")

                LoadImage(Txt: "https://itedge.ca/wp-content/uploads/2022/08/Business-Analyst-Course-768x768.jpg", scale: 1)
                About(Txt: aboutus.whatwedo)
                Divider()
                
                Spacer(minLength: 25)
                Headline(Txt: "Job Placement")
                Spacer(minLength: 25)
                
                LoadImage(Txt: "https://itedge.ca/wp-content/uploads/2022/08/itEDGE-CAREER-1024x678.jpg.webp", scale: 1)
                About(Txt: aboutus.jobplacement)
                Divider()
                
                Spacer(minLength: 25)

                Headline(Txt: "Courses We Offer !")

                LoadImage(Txt: "https://itedge.ca/wp-content/uploads/2022/05/WhatsApp-Image-2022-05-11-at-10.18.51-PM-1-1024x684.jpeg.webp", scale: 1)
                About(Txt: aboutus.courses)
                Divider()

                Courses1(Txt: "QA Automation")
                Courses1(Txt: "Business Analysis")
                Courses1(Txt: "IOS Development")
                Courses1(Txt: "Data Analysis")
                Divider()


            }
        }
        .preferredColorScheme(.light)
        .background(.color1)
        
    }
}

#Preview {
    let about: [Aboutus] = Bundle.main.decode("aboutus.json")
    return AboutUsView(aboutus: about[0])
}


