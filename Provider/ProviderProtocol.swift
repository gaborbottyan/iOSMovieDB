//
//  ProviderProtocol.swift
//  iOSMovieDB
//
//  Created by Sebastian Diaz Avila on 21-04-20.
//

import Foundation
import Foundation

protocol ProviderProtocol {

    typealias listMoviesResult = (Result<PageMovies>) -> Void
    typealias movieResult = (Result<Movie>) -> Void

    func getMovie(id: Int, completition: @escaping movieResult )
    func getTopRated(completition: @escaping listMoviesResult)
    func getUpcoming(completition: @escaping listMoviesResult)
    func getPopular(page: Int, completition: @escaping listMoviesResult)
}

