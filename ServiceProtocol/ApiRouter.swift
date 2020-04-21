//
//  ApiRouter.swift
//  iOSMovieDB
//
//  Created by Sebastian Diaz Avila on 20-04-20.
//

import Foundation
import Alamofire

enum ApiRouter {
    
    case getMovie(id: Int)
    case getTopRated(page: Int)
    case getUpcoming(page: Int)
    case getPopular(page: Int)
    case getNowPlaying(page: Int)
    case getLatest

    var path: String {
        switch self {
        case .getMovie(let id):
            return "\(ApiRouter.baseURL)/\(id)?api_key=\(ApiRouter.ApiKey)&language=es-US"
            
        case .getTopRated(let page):
            return "\(ApiRouter.baseURL)/top_rated?api_key=\(ApiRouter.ApiKey)&language=en-US&page=\(page)"
            
        case .getUpcoming(let page):
            return "\(ApiRouter.baseURL)/upcoming?api_key=\(ApiRouter.ApiKey)&language=en-US&page=\(page)"
            
        case .getPopular(let page):
            return "\(ApiRouter.baseURL)/popular?api_key=\(ApiRouter.ApiKey)&language=en-US&page=\(page)"
            
        case .getNowPlaying(let page):
            return "\(ApiRouter.baseURL)/now_playing?api_key=\(ApiRouter.ApiKey)&language=en-US&page=\(page)"
            
        case .getLatest:
            return "\(ApiRouter.baseURL)/latest?api_key=\(ApiRouter.ApiKey)&language=en-US"
        }
    }
    
    var parameters: [String : Any] {
        return [:]
    }
}

extension ApiRouter: URLRequestConvertible {
    func asURLRequest() throws -> URLRequest {
        let url = try self.path.asURL()
        let request = URLRequest(url: url)
        return try URLEncoding.default.encode(request, with: self.parameters)
    }
}

extension ApiRouter {
    static let baseURL = Bundle.main.object(forInfoDictionaryKey: "BaseUrl") as? String
    static let ApiKey = Bundle.main.object(forInfoDictionaryKey: "ApiKey") as? String
}
