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
    
    override func spec() {
        describe("ApiRouter") {
            context("Encode") {
                it("getMovie with parameters") {
                    let movieId = 1
                    let urlRequest = try! ApiRouter.getMovie(id: movieId).asURLRequest()
                    expect(urlRequest.debugDescription).to(
                        equal("https://api.themoviedb.org/3/movie/1?api_key=6893e0b3a6030f46d850edf87283de46&language=en-US"))
                }
            }
        }
    }
    
    
}
