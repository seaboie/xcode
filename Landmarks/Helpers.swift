//
//  Helpers.swift
//  Landmarks
//
//  Created by krit on 16/6/2566 BE.
//

import Foundation

extension Bundle {
    func decode<T: Decodable>(_ type: T.Type, from file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in Bundle.")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to loading \(file) from Bundle")
        }
        
        let decoder = JSONDecoder()
        
        guard let result = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to Decoder \(file) from Bundle")
        }
        
        return result;
    }
}
