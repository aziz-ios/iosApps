//
//  CreditsView.swift
//  Africa
//
//  Created by Aziz Ahmed on 2022-12-03.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            Text("""
    Copyright © Aziz Ahmed
    All right Reserved
    ITEDGE: Shaping the Future
    """)
            .font(.footnote)
        .multilineTextAlignment(.center)
        }//vstack
        .padding()
        .opacity(0.4)
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
