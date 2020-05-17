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
            
        case .getTopRated:
            return "\(ApiRouter.baseURL)/top_rated"
            
        case .getUpcoming:
            return "\(ApiRouter.baseURL)/upcoming"
            
        case .getPopular:
            return "\(ApiRouter.baseURL)/popular"
            
        case .getNowPlaying:
            return "\(ApiRouter.baseURL)/now_playing"
            
        case .getLatest:
            return "\(ApiRouter.baseURL)/latest"
        }
    }
    
    var parameters: [String : Any] {
        var param = ["api_key":"\(ApiRouter.ApiKey)","language":"en-US"]
        switch self {
        case .getTopRated(let page):
            param["page"] = "\(page)"
        case .getUpcoming(let page):
            param["page"] = "\(page)"
        case .getPopular(let page):
            param["page"] = "\(page)"
        case .getNowPlaying(let page):
            param["page"] = "\(page)"
        default:
            break
        }
        return param
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
    static let baseURL = "https://api.themoviedb.org/3/movie"
    static let ApiKey = Credencial.shared.apiKey
}
