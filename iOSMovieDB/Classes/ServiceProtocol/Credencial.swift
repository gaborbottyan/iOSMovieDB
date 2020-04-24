//
//  Credencial.swift
//  iOSMovieDB
//
//  Created by Sebastian Diaz Avila on 21-04-20.
//

import Foundation

class Credencial {
    
    static var shared: Credencial = Credencial()
    
    var baseURL: String = ""
    var apiKey: String = ""

    private init() { }
    
    func addCredencial(baseUrl: String, apiKey: String) {
        self.baseURL = baseUrl
        self.apiKey = apiKey
    }
    
}
