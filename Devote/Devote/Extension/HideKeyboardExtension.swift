//
//  HideKeyboardExtension.swift
//  Devote
//
//  Created by Aziz Ahmed on 2022-12-29.
//

import SwiftUI

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
