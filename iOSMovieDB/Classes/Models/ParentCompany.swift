//
//  ParentCompanie.swift
//  iOSMovieDB
//
//  Created by Sebastian Diaz Avila on 19-04-20.
//

import Foundation

public struct ParentCompany: Codable {
    var id: Int
    var logoPath: String?
    var name: String
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case logoPath = "logo_path"
        case name = "name"
    }
}
