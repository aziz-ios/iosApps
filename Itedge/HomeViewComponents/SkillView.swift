//
//  SkillView.swift
//  My resume
//
//  Created by Aziz Ahmed on 2023-12-24.
//

import SwiftUI

struct SkillView: View {
    var skill : String
    
    var body: some View {
        HStack(alignment: .top){
            Image(systemName: "star.fill")
                .foregroundStyle(.primary)
            
            About(Txt: skill)
        }
    }
}

#Preview {
    SkillView(skill: "skill")
}
