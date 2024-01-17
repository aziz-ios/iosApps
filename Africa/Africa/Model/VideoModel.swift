//
//  VideoModel.swift
//  Africa
//
//  Created by Aziz Ahmed on 2022-11-27.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed property
    var thumbnail: String {
        "video-\(id)"
    }
}
