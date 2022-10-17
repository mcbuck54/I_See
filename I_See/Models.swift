//
//  Models.swift
//  Eco00
//
//  Created by MCBUCK54 on 9/5/22.
//

import Foundation


struct Result: Codable {
    let data: [ResultItem]
}

struct ResultItem: Codable {
    let name: String
    let ID: Int
}

