//
//  Hero.swift
//  Fundamentos.iOS
//
//  Created by Pedro on 27/11/23.
//

import Foundation

import Foundation

struct Hero: Decodable {
    let id, description, name : String
    let photo: URL
    let favorite: Bool
}

extension Hero: HeroesAndTransformations{
}
