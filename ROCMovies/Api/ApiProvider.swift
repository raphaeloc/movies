//
//  ApiProvider.swift
//  ROCMovies
//
//  Created by Raphael Oliveira Chagas on 11/10/19.
//  Copyright © 2019 Raphael Oliveira Chagas. All rights reserved.
//

import Foundation
import Alamofire

class ApiProvider {
    
    func getMovies(result: @escaping (Movies?) -> Void) {
        guard let apiKey = Constants.Utils.apiKey.fromBase64() else { result(nil); return }
        let url: String = "\(Constants.Utils.urlMovies)\(apiKey)"
        Alamofire.request(url).responseData { (response) in
            
            switch response.result {
            case .success(_):
                guard let data = response.data, let jsonResponse = try? JSONDecoder().decode(Movies.self, from: data) else { result(nil); return }
                result(jsonResponse)
            case .failure(_):
                result(nil)
            }
        }
    }
}

