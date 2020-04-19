//
//  Movie.swift
//  MVP
//
//  Created by ITAU on 04-11-19.
//  Copyright © 2019 ITAU. All rights reserved.
//

import Foundation

public struct Movie: Codable {

    var id: Int
    var originalTitle: String
    var overview: String
    var originalLanguage: String
    var title: String
    var popularity: Double
    var voteAverage: Double
    var adult: Bool
    var budget: Int
    var releaseDate: String
    var revenue: Int
    var video: Bool
    var voteCount: Int
    
    var imdbId: String?
    var posterPath: String?
    var productionCompanies: [ResumeCompany]? = []
    var genres: [Genre]? = []
    var status: String?
    var tagline: String?
    var backdropPath: String?
    var belongsToCollection: ResumeCollection?
    var homePage: String?
    var productionCountries: [Country]? = []
    var runtime: Int?
    var spokenLanguages: [Language] = []
    
    var urlPoster: URL? {
        guard let posterPath = self.posterPath else { return nil }
        return URL(string: "https://image.tmdb.org/t/p/w500"+posterPath)!
    }
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case originalTitle = "original_title"
        case overview = "overview"
        case originalLanguage = "original_language"
        case title = "title"
        case popularity = "popularity"
        case voteAverage = "vote_average"
        case posterPath = "poster_path"
        case adult = "adult"
        case budget = "budget"
        case releaseDate = "release_date"
        case revenue = "revenue"
        case status = "status"
        case video = "video"
        case voteCount = "vote_count"
        
        case imdbId = "imdb_id"
        case productionCompanies = "production_companies"
        case genres = "genres"
        case tagline = "tagline"
        case backdropPath = "backdrop_path"
        case belongsToCollection = "belongs_to_collection"
        case homePage = "homepage"
        case productionCountries = "production_countries"
        case runtime = "runtime"
        case spokenLanguages = "spoken_languages"
    }
    
    
    init (resume: MovieResume) {
        self.id = resume.id
        self.originalTitle = resume.originalTitle
        self.overview = resume.overview
        self.originalLanguage = resume.originalLanguage
        self.title = resume.title
        self.popularity = resume.popularity
        self.voteAverage = resume.voteAverage
        self.posterPath = resume.posterPath
        self.adult = resume.adult
        self.releaseDate = resume.releaseDate
        self.voteCount = resume.voteCount
        self.video = resume.video
        self.revenue = 0
        self.budget = 0
    }
    
}

public struct MovieResume: Codable {
    
    var adult: Bool
    var overview: String
    var releaseDate: String
    var genreIds: [Int]
    var id: Int
    var originalTitle: String
    var originalLanguage: String
    var title: String
    var popularity: Double
    var voteCount: Int
    var video: Bool
    var voteAverage: Double
    
    var posterPath: String?
    var backdropPath: String?

    var urlPoster: URL? {
        guard let posterPath = self.posterPath else { return nil }
        return URL(string: "https://image.tmdb.org/t/p/w500"+posterPath)!
    }
    
    enum CodingKeys: String, CodingKey {
        case adult = "adult"
        case overview = "overview"
        case releaseDate = "release_date"
        case genreIds = "genre_ids"
        case id =  "id"
        case originalTitle = "original_title"
        case originalLanguage = "original_language"
        case title = "title"
        case backdropPath = "backdrop_path"
        case popularity = "popularity"
        case voteCount = "vote_count"
        case video = "video"
        case voteAverage = "vote_average"
        case posterPath = "poster_path"
    }
}

