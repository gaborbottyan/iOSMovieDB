//
//  Companie.swift
//  MVP
//
//  Created by ITAU on 04-11-19.
//  Copyright © 2019 ITAU. All rights reserved.
//

import Foundation

public struct Company: Codable {

    public var id: Int
    var logoPath: String?
    public var name: String
    public var originCountry: String
    public var description: String
    public var headquarters: String
    public var homepage: String
    public var parentCompany: ParentCompany?
    
    public var logoUrl: URL? {
        guard let logoPath = self.logoPath else { return nil }
        return URL(string: "https://image.tmdb.org/t/p/w500"+logoPath)
    }
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case logoPath = "logo_path"
        case name = "name"
        case originCountry = "origin_country"
        case description = "description"
        case headquarters = "headquarters"
        case homepage = "homepage"
        case parentCompany = "parent_company"
    }
}


public struct ResumeCompany: Codable {
    public var id: Int
    var logoPath: String?
    public var name: String
    public var originCountry: String
    
    public var logoUrl: URL? {
        guard let logoPath = self.logoPath else { return nil }
        return URL(string: "https://image.tmdb.org/t/p/w500"+logoPath)
    }
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case logoPath = "logo_path"
        case name = "name"
        case originCountry = "origin_country"
    }
}
