//
//  watchkitextension.swift
//  watchkitextension
//
//  Created by Aziz Ahmed on 2024-01-16.
//

import AppIntents

struct watchkitextension: AppIntent {
    static var title: LocalizedStringResource = "watchkitextension"
    
    func perform() async throws -> some IntentResult {
        return .result()
    }
}
