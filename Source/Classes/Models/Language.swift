//
//  Language.swift
//  iOSMovieDB
//
//  Created by Sebastian Diaz Avila on 18-04-20.
//

import Foundation

public struct Language: Codable {
    
    public var iso: String
    public var name: String
    
    enum CodingKeys: String, CodingKey {
        case iso = "iso_639_1"
        case name = "name"
    }
    
}
