//
//  Movie.swift
//  MVP
//
//  Created by ITAU on 04-11-19.
//  Copyright © 2019 ITAU. All rights reserved.
//

import Foundation

public struct Movie: Codable {

    public var id: Int
    public var originalTitle: String
    public var overview: String
    public var originalLanguage: String
    public var title: String
    public var popularity: Double
    public var voteAverage: Double
    public var adult: Bool
    public var budget: Int
    public var releaseDate: String
    public var revenue: Int
    public var video: Bool
    public var voteCount: Int
    
    public var imdbId: String?
    var posterPath: String?
    public var productionCompanies: [ResumeCompany]? = []
    public var genres: [Genre]? = []
    public var status: String?
    public var tagline: String?
    public var backdropPath: String?
    public var belongsToCollection: ResumeCollection?
    public var homePage: String?
    public var productionCountries: [Country]? = []
    public var runtime: Int?
    public var spokenLanguages: [Language] = []
    
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
    
    public var adult: Bool
    public var overview: String
    public var releaseDate: String
    public var genreIds: [Int]
    public var id: Int
    public var originalTitle: String
    public var originalLanguage: String
    public var title: String
    public var popularity: Double
    public var voteCount: Int
    public var video: Bool
    public var voteAverage: Double
    
    var posterPath: String?
    public var backdropPath: String?

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

