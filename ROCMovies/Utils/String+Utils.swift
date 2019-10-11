//
//  String+Utils.swift
//  ROCMovies
//
//  Created by Raphael Oliveira Chagas on 11/10/19.
//  Copyright © 2019 Raphael Oliveira Chagas. All rights reserved.
//

import Foundation

extension String {
    
    func fromBase64() -> String? {
        guard let data = Data(base64Encoded: self) else {
            return nil
        }
        
        return String(data: data, encoding: .utf8)
    }
    
    func toBase64() -> String {
        return Data(self.utf8).base64EncodedString()
    }
}
