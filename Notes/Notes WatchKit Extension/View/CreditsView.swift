//
//  DetailView.swift
//  Notes Watch App
//
//  Created by Aziz Ahmed on 2023-01-18.
//

import SwiftUI

struct CreditsView: View {
  @State private var randomNumber: Int = Int.random(in: 1..<4)
  
  private var randomImage: String {
    return "developer-no\(randomNumber)"
  }


  var body: some View {
    VStack(spacing: 3) {
      Image(randomImage)
        .resizable()
        .scaledToFit()
        .layoutPriority(1)
      
      HeaderView(title: "Credits")
      
      Text("Aziz Ahmed")
        .foregroundColor(.primary)
        .fontWeight(.bold)
      
      Text("IOS-Developer")
        .font(.footnote)
        .foregroundColor(.secondary)
        .fontWeight(.light)
    } //: VSTACK
  }
}


struct CreditsView_Previews: PreviewProvider {
  static var previews: some View {
    CreditsView()
  }
}
