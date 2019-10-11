//
//  Movies.swift
//  ROCMovies
//
//  Created by Raphael Oliveira Chagas on 11/10/19.
//  Copyright © 2019 Raphael Oliveira Chagas. All rights reserved.
//

import Foundation

struct Movies: Codable {
    
    let page: Int
    let totalResults: Int
    let totalPages: Int
    let results: [Result]
    
    enum CodingKeys: String, CodingKey {
        case page
        case totalResults = "total_results"
        case totalPages = "total_pages"
        case results
    }
}
