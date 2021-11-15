//
//  SpaceModel.swift
//  Final Space SwiftUI
//
//  Created by Leandro Favre on 14/11/2021.
//

import Foundation

struct ReqResListadoElement: Codable {
    let id: Int
    let name, status: String
    let species: String?
    let gender, hair: String
    let alias: [String]
    let origin: String
    let abilities: [String]
    let imgURL: String

    enum CodingKeys: String, CodingKey {
        case id, name, status, species, gender, hair, alias, origin, abilities
        case imgURL = "img_url"
    }
}

typealias SpaceModel = [ReqResListadoElement]
