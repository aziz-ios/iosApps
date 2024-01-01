//
//  Constant.swift
//  Devote
//
//  Created by Aziz Ahmed on 2022-12-29.
//

import SwiftUI
//Mark:FOrmatter

 let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

//Mark: UI
var backgroundGradient: LinearGradient {
    return LinearGradient(gradient: Gradient(colors : [Color.pink, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
}

//Mark: UX
let feedback = UINotificationFeedbackGenerator()


