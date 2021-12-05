//
//  ProviderProtocol.swift
//  iOSMovieDB
//
//  Created by Sebastian Diaz Avila on 21-04-20.
//

import Foundation

public protocol ProviderProtocol {

    typealias listMoviesResult = (Result<PageMovies>) -> Void
    typealias movieResult = (Result<Movie>) -> Void

    func getMovie(id: Int, completion: @escaping movieResult)
    func getUpcoming(page: Int, completion: @escaping listMoviesResult)
    func getTopRated(page: Int, completion: @escaping listMoviesResult)
    func getPopular(page: Int, completion: @escaping listMoviesResult)
    func getNowPlaying(page: Int, completion: @escaping listMoviesResult)
    func getLatest(completion: @escaping listMoviesResult)
}

