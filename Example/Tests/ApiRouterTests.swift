//
//  ApiRouterTests.swift
//  iOSMovieDB_Tests
//
//  Created by Sebastian Diaz Avila on 20-04-20.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation
import Quick
import Nimble

@testable import iOSMovieDB

class ApiRouterTests: QuickSpec {
    
    var baseURL: String = ""
    var apiKey: String = ""
    
    override func spec() {
        describe("ApiRouter") {
            
            context("Encode") {
                
                beforeEach {
                    self.baseURL = "https://api.themoviedb.org/3/movie"
                    self.apiKey = "1"
                    Credencial.shared.addCredencial(baseUrl: self.baseURL, apiKey: self.apiKey)
                }
                
                it("getMovie with parameters") {
                    let movieId = 1
                    let urlRequest = try! ApiRouter.getMovie(id: movieId).asURLRequest()
                    expect(urlRequest.debugDescription).to(
                        equal("\(self.baseURL)/1?api_key=\(self.apiKey)&language=en-US"))
                }
                
                it("getUpcoming with parameters") {
                    let pageMovie = 1
                    let urlRequest = try! ApiRouter.getUpcoming(page: pageMovie).asURLRequest()
                    expect(urlRequest.debugDescription).to(
                        equal("\(self.baseURL)/upcoming?api_key=\(self.apiKey)&language=en-US&page=1"))
                }
                
                it("getTopRated with parameters") {
                   let pageMovie = 1
                   let urlRequest = try! ApiRouter.getTopRated(page: pageMovie).asURLRequest()
                   expect(urlRequest.debugDescription).to(
                       equal("\(self.baseURL)/top_rated?api_key=\(self.apiKey)&language=en-US&page=1"))
                }
                
                it("getPopular with parameters") {
                    let pageMovie = 1
                    let urlRequest = try! ApiRouter.getPopular(page: pageMovie).asURLRequest()
                    expect(urlRequest.debugDescription).to(
                        equal("\(self.baseURL)/popular?api_key=\(self.apiKey)&language=en-US&page=1"))
                }
                
                it("getNowPlaying with parameters") {
                    let pageMovie = 1
                    let urlRequest = try! ApiRouter.getNowPlaying(page: pageMovie).asURLRequest()
                    expect(urlRequest.debugDescription).to(
                        equal("\(self.baseURL)/now_playing?api_key=\(self.apiKey)&language=en-US&page=1"))
                }
                
                it("getLatest with parameters") {
                    let urlRequest = try! ApiRouter.getLatest.asURLRequest()
                    expect(urlRequest.debugDescription).to(
                        equal("\(self.baseURL)/latest?api_key=\(self.apiKey)&language=en-US"))
                }
            }
        }
    }
    
    
}
