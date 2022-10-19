//
//  Models.swift
//  I_See
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

struct Result2: Codable {
    let Data: [ResultItem2]
}

struct ResultItem2: Codable {
    let id: Int
    let name: String
    let pngfile: String
    let xpos: Int
    let ypos: Int
    let found: Bool
}

