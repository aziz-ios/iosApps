//
//  File.swift
//  Africa
//
//  Created by Aziz Ahmed on 2022-12-03.
//

import SwiftUI

struct CentreModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
