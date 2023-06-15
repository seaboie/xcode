//
//  ModelData.swift
//  Landmarks
//
//  Created by krit on 13/6/2566 BE.
//

import Foundation
import Combine

final class ModelData: ObservableObject {
    @Published var landmarks: [Landmark] = loadJsonBundle(fileName: "landmarkData.json")
    var hikes: [Hike] = loadJsonBundle(fileName: "hikeData.json")
}


func loadJsonBundle<T: Decodable>(fileName: String) -> T {
    
    let data: Data
    
    guard let file = Bundle.main.url(forResource: fileName, withExtension: nil)
    else {
        fatalError("Couldn't find \(fileName) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(fileName) from main bundle: \n \(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(fileName) as \(T.self): \n \(error)")
    }
}





