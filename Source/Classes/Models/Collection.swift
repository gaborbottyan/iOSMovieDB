//
//  Collection.swift
//  Alamofire
//
//  Created by Sebastian Diaz Avila on 18-04-20.
//

import Foundation

public struct Collection: Codable {
    
    public var id: Int
    public var name: String
    public var overview: String
    public var backdropPath: String
    public var parts: [MovieResume]
    public var posterPath: String?

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

    public var id: Int
    public var name: String
    public var backdropPath: String
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case backdropPath = "backdrop_path"
    }
}
