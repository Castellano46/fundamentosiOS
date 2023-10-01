//
//  Transformation.swift
//  Fundamentos.iOS
//
//  Created by Pedro on 25/9/23.
//

import Foundation

struct Transformation: Decodable {
    let name, id, description : String
    let photo: URL
}

extension Transformation: HeroesAndTransformations{
}
