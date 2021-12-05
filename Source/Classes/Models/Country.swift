//
//  Countrie.swift
//  iOSMovieDB
//
//  Created by Sebastian Diaz Avila on 18-04-20.
//

import Foundation

public struct Country: Codable {
    public var iso: String
    public var name: String
    
    enum CodingKeys: String, CodingKey {
        case iso = "iso_3166_1"
        case name = "name"
    }
}
