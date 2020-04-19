//
//  Collection.swift
//  Alamofire
//
//  Created by Sebastian Diaz Avila on 18-04-20.
//

import Foundation

public struct Collection: Codable {
    
    var id: Int
    var name: String
    var overview: String
    var backdropPath: String
    var parts: [MovieResume]
    var posterPath: String?

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case overview = "overview"
        case backdropPath = "backdrop_path"
        case parts = "parts" 
        case posterPath = "poster_path"
    }
}

public struct ResumeCollection: Codable {

    var id: Int
    var name: String
    var backdropPath: String
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case backdropPath = "backdrop_path"
    }
}
