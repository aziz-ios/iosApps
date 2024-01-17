//
//  Note.swift
//  Notes Watch App
//
//  Created by Aziz Ahmed on 2023-01-18.
//

import Foundation

struct Note: Identifiable, Codable {
  let id: UUID
  let text: String
}
