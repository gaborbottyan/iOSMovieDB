//
//  FileMapper.swift
//  iOSMovieDB_Example
//
//  Created by Sebastian Diaz Avila on 19-04-20.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation

public class FileMapper {
    
    public static func mapModel<Model: Decodable>(data: Data) -> Model? {
        do {
            let decoder = JSONDecoder()
            let object: Model = try decoder.decode(Model.self, from: data)
            return object
        } catch let error {
            debugPrint(error)
            return nil
        }
    }
    
   public static func fileMapper(file name: String, bundler: Bundle ) -> Data? {
        guard let path = bundler.url(forResource: name, withExtension: ".json") else { return nil }
        do {
            let data = try Data(contentsOf: path)
            return data
        } catch let error {
            debugPrint(error)
            return nil
        }
    }
    
   public static func mapperModelFile<Model: Decodable>(file name: String, bundler: Bundle ) -> Model? {
        guard let data = fileMapper(file: name, bundler: bundler ) else { return nil }
        return mapModel(data: data)
    }
    
    
}
