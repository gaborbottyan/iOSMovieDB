//
//  ProviderTests.swift
//  iOSMovieDB_Example
//
//  Created by Sebastian Diaz Avila on 23-04-20.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation
import Quick
import Nimble

@testable import iOSMovieDB

class ProviderTests: QuickSpec {
    
    override func spec() {
        describe("Provider") {
            
            var provider: ProviderProtocol!
            var service: ServiceProtocol!
            
            beforeEach {
                service = ServiceMockProcotol()
                provider = MovieProvider(service: service)
            }
            
            context("service success") {
                it("mapp movie detail ") {
                    var movie: Movie?
                    provider.getMovie(id: 1) { result in
                        switch result{
                        case .success(let model):
                            movie = model
                        default:
                            movie = nil
                        }
                    }
                    expect(movie).to(beAKindOf(Movie.self))
                }
            }
        }
    }
    
    
}
