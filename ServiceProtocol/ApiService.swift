//
//  ApiService.swift
//  iOSMovieDB
//
//  Created by Sebastian Diaz Avila on 20-04-20.
//

import Foundation
import Alamofire

class ApiService: ServiceProtocol {
    
    required init(baseUrl: String, apiKey: String, configuration: URLSessionConfiguration = .default) {
        networkingManager = SessionManager(configuration: configuration)
        Credencial.shared.addCredencial(baseUrl: baseUrl, apiKey: apiKey)
    }
    
    var networkingManager: SessionManager
        
    func fetchMovie(id: Int, completion: @escaping (Result<Data>) -> Void) {
        networkingManager.request(ApiRouter.getMovie(id: id)).validate().responseData { response in
            completion(self.handlerResponse(response: response))
        }
    }
    
    func fetchUpcoming(page: Int, completion: @escaping (Result<Data>) -> Void) {
        networkingManager.request(ApiRouter.getUpcoming(page: page)).validate().responseData { response in
            completion(self.handlerResponse(response: response))
        }
    }
    
    func fetchTopRated(page: Int, completion: @escaping (Result<Data>) -> Void) {
        networkingManager.request(ApiRouter.getTopRated(page: page)).validate().responseData { response in
            completion(self.handlerResponse(response: response))
        }
    }
    
    func fetchPopular(page: Int, completion: @escaping (Result<Data>) -> Void) {
        networkingManager.request(ApiRouter.getPopular(page: page)).validate().responseData { response in
            completion(self.handlerResponse(response: response))
        }
    }
    
    func fetchNowPlaying(page: Int, completion: @escaping (Result<Data>) -> Void) {
        networkingManager.request(ApiRouter.getNowPlaying(page: page)).validate().responseData { response in
            completion(self.handlerResponse(response: response))
        }
    }
    
    func fetchLatest(completion: @escaping (Result<Data>) -> Void) {
        networkingManager.request(ApiRouter.getLatest).validate().responseData { response in
            completion(self.handlerResponse(response: response))
        }
    }
    
    private func handlerResponse(response: DataResponse<Data>) -> Result<Data>{
        switch response.result {
        case .success(let data):
            return .success(data: data)
        case .failure(let error):
            switch error._code {
            case NSURLErrorNotConnectedToInternet:
                return .failure(error: .ErrorNotConnectedToInternet)
            case NSURLErrorBadURL:
                return .failure(error: .ErrorBadUrl)
            case NSURLErrorTimedOut:
                return .failure(error: .ErrorTimeOut)
            case NSURLErrorCannotFindHost:
                return .failure(error: .ErrorCannotFindHost)
            case NSURLErrorNetworkConnectionLost:
                return .failure(error: .ErrorNetworkConnectionLost)
            case NSURLErrorBadServerResponse:
                return .failure(error: .ErrorBadServerResponse)
            case NSURLErrorUserAuthenticationRequired:
                return .failure(error: .ErrorUserAuthenticationRequired)
            default:
                return .failure(error: .ErrorUnknown)
            }
        }
    }
}
