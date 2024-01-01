//
//  Bundle-Decoder.swift
//  Itedge
//
//  Created by Aziz Ahmed on 2023-12-25.
//

import Foundation
extension Bundle {
    func decode<T: Codable>(_ file : String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("failed to locate \(file) from bundle")
        }
        guard let data = try? Data(contentsOf: url) else {
            fatalError("failed to load \(file) from bundle")

        }
        let decoder = JSONDecoder()

        
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("failed to decode \(file) from bundle")
        }
        return loaded
    }
}
