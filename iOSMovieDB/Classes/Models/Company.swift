//
//  Companie.swift
//  MVP
//
//  Created by ITAU on 04-11-19.
//  Copyright © 2019 ITAU. All rights reserved.
//

import Foundation

public struct Company: Codable {

    var id: Int
    var logoPath: String?
    var name: String
    var originCountry: String
    var description: String
    var headquarters: String
    var homepage: String
    var parentCompany: ParentCompany?
    
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
    
    func getURLLogo() -> URL? {
        guard let logoPath = self.logoPath else { return nil }
        return URL(string: "https://image.tmdb.org/t/p/w500"+logoPath)
    }

}


public struct ResumeCompany: Codable {
    var id: Int
    var logoPath: String?
    var name: String
    var originCountry: String
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case logoPath = "logo_path"
        case name = "name"
        case originCountry = "origin_country"
    }
}
