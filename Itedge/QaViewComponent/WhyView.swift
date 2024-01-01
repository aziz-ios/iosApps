//
//  WhyView.swift
//  Itedge
//
//  Created by Aziz Ahmed on 2023-12-26.
//

import SwiftUI




struct WhyView: View {
    @State private var itedge = Itedge()

    
    var body: some View {
    
            VStack(alignment: .leading) {
                Spacer(minLength: 30)
                
                LoadImage(Txt: "https://itedge.ca/wp-content/uploads/2022/05/employee-onboarding-and-training-vector-removebg-preview.png", scale: 1)
                Spacer(minLength: 30)

                ForEach(itedge.WhyLinks.indices, id: \.self) { link in
                    WhyCard(image: itedge.WhyLinks[link], text: itedge.Why1[link],
                    Whybody: itedge.Why2[link])
                }
            }
        
    }
}

#Preview {
    
    WhyView()
}

