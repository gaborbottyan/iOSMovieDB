//
//  ModelTests.swift
//  iOSMovieDB_Example
//
//  Created by Sebastian Diaz Avila on 18-04-20.
//  Copyright © 2020 CocoaPods. All rights reserved.
//
import Foundation
import Quick
import Nimble

@testable import iOSMovieDB

class ModelTests: QuickSpec {
    
    override func spec() {
        describe("Company") {
            context("response service") {
                var object: Company?
                it("can map all data") {
                    object = FileMapper.mapperModelFile(file: "CompanyAllData", bundler: Bundle(for: type(of: self )))
                    expect(object).to(beAKindOf(Company.self))
                }
                
                it("can map data nil") {
                    object = FileMapper.mapperModelFile(file: "CompanyDataNil", bundler: Bundle(for: type(of: self )))
                    expect(object).to(beAKindOf(Company.self))
                }
            }
        }
    
        describe("Country") {
            context("response service") {
                var object: Country?
                it("can map all data") {
                    object = FileMapper.mapperModelFile(file: "CountryAllData", bundler: Bundle(for: type(of: self )))
                    expect(object).to(beAKindOf(Country.self))
                }
            }
        }
        
        describe("Genre") {
            context("response service") {
                var object: Genre?
                it("can map all data") {
                    object = FileMapper.mapperModelFile(file: "Genre", bundler: Bundle(for: type(of: self )))
                    expect(object).to(beAKindOf(Genre.self))
                }
            }
        }
        
        describe("Language") {
            context("response service") {
                var object: Language?
                it("can map all data") {
                    object = FileMapper.mapperModelFile(file: "Language", bundler: Bundle(for: type(of: self )))
                    expect(object).to(beAKindOf(Language.self))
                }
            }
        }
        
        describe("Movie") {
            context("response service") {
                var object: Movie?
                it("can map all data") {
                    object = FileMapper.mapperModelFile(file: "Movie", bundler: Bundle(for: type(of: self )))
                    expect(object).to(beAKindOf(Movie.self))
                }
                
                it("can map data nil") {
                    object = FileMapper.mapperModelFile(file: "MovieNil", bundler: Bundle(for: type(of: self )))
                    expect(object).to(beAKindOf(Movie.self))
                }
            }
        }
        
        describe("Collection") {
            context("response service") {
                var object: Collection?
                it("can map all data") {
                    object = FileMapper.mapperModelFile(file: "Collection", bundler: Bundle(for: type(of: self )))
                    expect(object).to(beAKindOf(Collection.self))
                }
            }
        }
        
        describe("ResumeCollection") {
            context("response service") {
                var object: ResumeCollection?
                it("can map all data") {
                    object = FileMapper.mapperModelFile(file: "ResumeCollection", bundler: Bundle(for: type(of: self )))
                    expect(object).to(beAKindOf(ResumeCollection.self))
                }
            }
        }
        
        describe("PageMovies") {
            context("response service") {
                var object: PageMovies?
                it("can map all data") {
                    object = FileMapper.mapperModelFile(file: "PageMovies", bundler: Bundle(for: type(of: self )))
                    expect(object).to(beAKindOf(PageMovies.self))
                }
            }
        }
        
        describe("ResumeCompany") {
            context("response service") {
                var object: ResumeCompany?
                it("can map all data") {
                    object = FileMapper.mapperModelFile(file: "ResumeCompany", bundler: Bundle(for: type(of: self )))
                    expect(object).to(beAKindOf(ResumeCompany.self))
                }
                
                it("can map data nil") {
                    object = FileMapper.mapperModelFile(file: "ResumeCompanyNil", bundler: Bundle(for: type(of: self )))
                    expect(object).to(beAKindOf(ResumeCompany.self))
                }
            }
            
        }
    }
    
}
