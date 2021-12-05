//
//  ServiceProtocol.swift
//  iOSMovieDB
//
//  Created by Sebastian Diaz Avila on 20-04-20.
//

import Foundation


public enum Result<Value> {
    case success(_ data: Value)
    case failure(_ error: ErrorService)
}

public enum ErrorService: Error {
    case ErrorNotConnectedToInternet
    case ErrorBadUrl
    case ErrorTimeOut
    case ErrorCannotFindHost
    case ErrorNetworkConnectionLost
    case ErrorBadServerResponse
    case ErrorUserAuthenticationRequired
    case ErrorMapperModel(_ error: Error )
    case ErrorUnknown
}

public protocol ServiceProtocol {
    
    typealias resultCompletion = (Result<Data>) -> Void
    
    func fetchMovie(id: Int, completion: @escaping resultCompletion)
    func fetchUpcoming(page: Int, completion: @escaping resultCompletion)
    func fetchTopRated(page: Int, completion: @escaping resultCompletion)
    func fetchPopular(page: Int, completion: @escaping resultCompletion)
    func fetchNowPlaying(page: Int, completion: @escaping resultCompletion)
    func fetchLatest(completion: @escaping resultCompletion)

}
