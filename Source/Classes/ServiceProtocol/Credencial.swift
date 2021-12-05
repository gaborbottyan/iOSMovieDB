//
//  Credencial.swift
//  iOSMovieDB
//
//  Created by Sebastian Diaz Avila on 21-04-20.
//

import Foundation

class Credencial {
    
    static var shared: Credencial = Credencial()

    var apiKey: String = ""

    private init() { }
    
    func addCredencial(apiKey: String) {
        self.apiKey = apiKey
    }
    
}
