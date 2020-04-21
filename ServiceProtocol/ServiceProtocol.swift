//
//  ServiceProtocol.swift
//  iOSMovieDB
//
//  Created by Sebastian Diaz Avila on 20-04-20.
//

import Foundation


enum Result<Value> {
    case success(data: Value)
    case failure(error: ErrorService)
}

enum ErrorService: Error {
    case ErrorNotConnectedToInternet
    case ErrorBadUrl
    case ErrorTimeOut
    case ErrorCannotFindHost
    case ErrorNetworkConnectionLost
    case ErrorBadServerResponse
    case ErrorUserAuthenticationRequired
    case ErrorMapperModel
    case ErrorUnknown
}

protocol ServiceProtocol {
    
    typealias resultCompletion = (Result<Data>) -> Void
    
    func fetchMovie(id: Int, completion: @escaping resultCompletion)
    func fetchUpcoming(page: Int, completion: @escaping resultCompletion)
    func fetchTopRated(page: Int, completion: @escaping resultCompletion)
    func fetchPopular(page: Int, completion: @escaping resultCompletion)
    func fetchNowPlaying(page: Int, completion: @escaping resultCompletion)
    func fetchLatest(completion: @escaping resultCompletion)
    
}
