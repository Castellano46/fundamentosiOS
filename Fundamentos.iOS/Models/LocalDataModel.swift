//
//  LocalDataModel.swift
//  Fundamentos.iOS
//
//  Created by Pedro on 25/9/23.
//

import Foundation

struct LocalDataModel {
    private static let key = "SuperHeroesToken"
    
    private static let userDefaults = UserDefaults.standard
    
    //MARK: Con esta funcion cogemos el token
    static func getToken() -> String? {
        userDefaults.string(forKey: key)
    }
    
    //MARK: De esta manera guardamos el token
    static func save(token: String) {
        userDefaults.set(token, forKey: key)
        
    }
    
    static func deleteToken() {
        userDefaults.removeObject(forKey: key)
    }
}
