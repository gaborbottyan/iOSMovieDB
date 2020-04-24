//
//  ApiService.swift
//  iOSMovieDB
//
//  Created by Sebastian Diaz Avila on 20-04-20.
//

import Foundation
import Alamofire

public class ApiService: ServiceProtocol {
    
    public required init(baseUrl: String, apiKey: String, configuration: URLSessionConfiguration = .default) {
        networkingManager = SessionManager(configuration: configuration)
        Credencial.shared.addCredencial(baseUrl: baseUrl, apiKey: apiKey)
    }
    
    var networkingManager: SessionManager
        
    public func fetchMovie(id: Int, completion: @escaping (Result<Data>) -> Void) {
        networkingManager.request(ApiRouter.getMovie(id: id)).validate().responseData { response in
            completion(self.handlerResponse(response: response))
        }
    }
    
    public func fetchUpcoming(page: Int, completion: @escaping (Result<Data>) -> Void) {
        networkingManager.request(ApiRouter.getUpcoming(page: page)).validate().responseData { response in
            completion(self.handlerResponse(response: response))
        }
    }
    
    public func fetchTopRated(page: Int, completion: @escaping (Result<Data>) -> Void) {
        networkingManager.request(ApiRouter.getTopRated(page: page)).validate().responseData { response in
            completion(self.handlerResponse(response: response))
        }
    }
    
    public func fetchPopular(page: Int, completion: @escaping (Result<Data>) -> Void) {
        networkingManager.request(ApiRouter.getPopular(page: page)).validate().responseData { response in
            completion(self.handlerResponse(response: response))
        }
    }
    
    public func fetchNowPlaying(page: Int, completion: @escaping (Result<Data>) -> Void) {
        networkingManager.request(ApiRouter.getNowPlaying(page: page)).validate().responseData { response in
            completion(self.handlerResponse(response: response))
        }
    }
    
    public func fetchLatest(completion: @escaping (Result<Data>) -> Void) {
        networkingManager.request(ApiRouter.getLatest).validate().responseData { response in
            completion(self.handlerResponse(response: response))
        }
    }
    
    private func handlerResponse(response: DataResponse<Data>) -> Result<Data>{
        switch response.result {
        case .success(let data):
            return .success(data)
        case .failure(let error):
            switch error._code {
            case NSURLErrorNotConnectedToInternet:
                return .failure(.ErrorNotConnectedToInternet)
            case NSURLErrorBadURL:
                return .failure(.ErrorBadUrl)
            case NSURLErrorTimedOut:
                return .failure(.ErrorTimeOut)
            case NSURLErrorCannotFindHost:
                return .failure(.ErrorCannotFindHost)
            case NSURLErrorNetworkConnectionLost:
                return .failure(.ErrorNetworkConnectionLost)
            case NSURLErrorBadServerResponse:
                return .failure(.ErrorBadServerResponse)
            case NSURLErrorUserAuthenticationRequired:
                return .failure(.ErrorUserAuthenticationRequired)
            default:
                return .failure(.ErrorUnknown)
            }
        }
    }
}
