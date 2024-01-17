//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Aziz Ahmed on 2022-11-26.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        // 1. Locate the JSON file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("failed to locate \(file) in bundle ")
        }
        
        
        //2.Create a peoperty for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("failed to load \(file) from the bundle")
        }
        
        
        //3.create a decoder
        let decoder = JSONDecoder()
        
        
        //4. create a peoperty for the decoded data
        guard let loaded = try? decoder.decode(T.self, from:data) else {
            fatalError("failed to decode \(file) from bundle")
        }
        
        
        //5. Return the ready to use data
        return loaded
    }
}
