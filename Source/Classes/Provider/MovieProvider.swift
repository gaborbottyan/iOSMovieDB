//
//  MovieProvider.swift
//  iOSMovieDB
//
//  Created by Sebastian Diaz Avila on 23-04-20.
//

import Foundation

public class MovieProvider: ProviderProtocol {
    
    var service: ServiceProtocol
    
    public init(service: ServiceProtocol) {
        self.service = service
    }
    
    public func getMovie(id: Int, completion: @escaping movieResult) {
        service.fetchMovie(id: id) { response in
            completion(self.responseHandler(response))
        }
    }
    
    public func getUpcoming(page: Int, completion: @escaping listMoviesResult) {
        service.fetchUpcoming(page: page) { response in
            completion(self.responseHandler(response))
        }
    }
    
    public func getTopRated(page: Int, completion: @escaping listMoviesResult) {
        service.fetchTopRated(page: page) { response in
            completion(self.responseHandler(response))
        }
    }
    
    public func getPopular(page: Int, completion: @escaping listMoviesResult) {
        service.fetchPopular(page: page) { response in
            completion(self.responseHandler(response))
        }
    }
    
    public func getNowPlaying(page: Int, completion: @escaping listMoviesResult) {
        service.fetchNowPlaying(page: page) { response in
            completion(self.responseHandler(response))
        }
    }
    
    public func getLatest(completion: @escaping listMoviesResult) {
        service.fetchLatest { response in
            completion(self.responseHandler(response))
        }
    }
    
    private func responseHandler<Model: Codable>(_ response: Result<Data>) -> Result<Model> {
        switch response {
        case .success(let data):
            do {
                let decoder = JSONDecoder()
                let model = try decoder.decode(Model.self, from: data)
                return .success(model)
            } catch let error {
                return .failure(.ErrorMapperModel(error))
            }
        case.failure(let error):
            return .failure(error)
        }
    }
}
