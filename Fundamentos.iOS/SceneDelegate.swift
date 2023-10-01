//
//  SceneDelegate.swift
//  Fundamentos.iOS
//
//  Created by Pedro on 25/9/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        guard let scene = (scene as? UIWindowScene) else {
            return
        }
        let window = UIWindow(windowScene: scene)
        let viewController = UINavigationController(rootViewController:  LoginViewController())
        window.rootViewController = viewController
        window.makeKeyAndVisible()
        self.window = window
        
    }
}

