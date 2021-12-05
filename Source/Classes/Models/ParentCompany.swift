//
//  ParentCompanie.swift
//  iOSMovieDB
//
//  Created by Sebastian Diaz Avila on 19-04-20.
//

import Foundation

public struct ParentCompany: Codable {
    public var id: Int
    var logoPath: String?
    public var name: String
    
    public var logoUrl: URL? {
        guard let logoPath = self.logoPath else { return nil }
        return URL(string: "https://image.tmdb.org/t/p/w500"+logoPath)
    }
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case logoPath = "logo_path"
        case name = "name"
    }
}
