//
//  Countrie.swift
//  iOSMovieDB
//
//  Created by Sebastian Diaz Avila on 18-04-20.
//

import Foundation

public struct Countrie: Codable {
    
    var iso: String
    var name: String
    
    enum CodingKeys: String, CodingKey {
        case iso = "iso_3166_1"
        case name = "name"
    }
}
