//
//  ServiceMockProtocol.swift
//  iOSMovieDB_Tests
//
//  Created by Sebastian Diaz Avila on 23-04-20.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation
import iOSMovieDB

class ServiceMockProcotol: ServiceProtocol {
    
    init() {}
    
    
    func fetchMovie(id: Int, completion: @escaping resultCompletion) {
        if let data = FileMapper.fileMapper(file: "Movie", bundler: Bundle.init(for: type(of: self))) {
            completion(.success(data))
        }
        
    }
    
    func fetchUpcoming(page: Int, completion: @escaping resultCompletion) {
        if let data = FileMapper.fileMapper(file: "PageMovies", bundler: Bundle.init(for: type(of: self))) {
            completion(.success(data))
        }
    }
    
    func fetchTopRated(page: Int, completion: @escaping resultCompletion) {
        if let data = FileMapper.fileMapper(file: "PageMovies", bundler: Bundle.init(for: type(of: self))) {
            completion(.success(data))
        }
    }
    
    func fetchPopular(page: Int, completion: @escaping resultCompletion) {
        if let data = FileMapper.fileMapper(file: "PageMovies", bundler: Bundle.init(for: type(of: self))) {
            completion(.success(data))
        }
    }
    
    func fetchNowPlaying(page: Int, completion: @escaping resultCompletion) {
        if let data = FileMapper.fileMapper(file: "PageMovies", bundler: Bundle.init(for: type(of: self))) {
            completion(.success(data))
        }
    }
    
    func fetchLatest(completion: @escaping resultCompletion) {
        if let data = FileMapper.fileMapper(file: "PageMovies", bundler: Bundle.init(for: type(of: self))) {
            completion(.success(data))
        }
    }
}
