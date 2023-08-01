//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Kaloyan Petkov on 29.07.23.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        //MARK: - Locate JSON File
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        //MARK: - Create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        
        //MARK: - Create decoder
        let decoder = JSONDecoder()
        
        //MARK: - Create a property for the decoded data
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle")
        }
        
        //MARK: - Return the ready-to-use data
        
        return loaded
    }
}
