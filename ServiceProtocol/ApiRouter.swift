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
            return "\(ApiRouter.baseURL)/\(id)"
            
        case .getTopRated(let page):
            return "\(ApiRouter.baseURL)/top_rated"
            
        case .getUpcoming(let page):
            return "\(ApiRouter.baseURL)/upcoming"
            
        case .getPopular(let page):
            return "\(ApiRouter.baseURL)/popular"
            
        case .getNowPlaying(let page):
            return "\(ApiRouter.baseURL)/now_playing"
            
        case .getLatest:
            return "\(ApiRouter.baseURL)/latest"
        }
    }
    
    var parameters: [String : Any] {
        
        var parameters = [
                            "api_key":"\(ApiRouter.ApiKey)",
                            "language":"en-US"
                        ]
        switch self {
        case .getTopRated(let page):
            parameters["page"] = "\(page)"
        case .getUpcoming(let page):
            parameters["page"] = "\(page)"
        case .getPopular(let page):
            parameters["page"] = "\(page)"
        case .getNowPlaying(let page):
            parameters["page"] = "\(page)"
        default:
            break
        }
        return parameters
    }
}

extension ApiRouter: URLRequestConvertible {
    func asURLRequest() throws -> URLRequest {
        let url = try self.path.asURL()
        let request = URLRequest(url: url)
        return try URLEncoding.queryString.encode(request, with: self.parameters)
    }
}

extension ApiRouter {
    static let baseURL = Bundle.main.object(forInfoDictionaryKey: "BaseUrl") as? String
    static let ApiKey = Bundle.main.object(forInfoDictionaryKey: "ApiKey") as? String
}
