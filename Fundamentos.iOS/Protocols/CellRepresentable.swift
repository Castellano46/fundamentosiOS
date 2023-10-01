//
//  CellRepresentable.swift
//  Fundamentos.iOS
//
//  Created by Pedro on 25/9/23.
//

import Foundation

protocol CellRepresentable {
    var name: String { get }
    var description: String { get }
    var photo: URL { get }
}
