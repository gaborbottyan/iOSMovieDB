//
//  PageMovies.swift
//  MVP
//
//  Created by Sebastian Diaz Avila on 17-11-19.
//  Copyright © 2019 ITAU. All rights reserved.
//

import Foundation

public struct PageMovies: Codable {
    var page: Int
    var results: [MovieResume]
}
