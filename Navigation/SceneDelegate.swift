//
//  SceneDelegate.swift
//  Navigation
//
//  Created by nikita on 14.02.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let scene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: scene)
        
        let feedViewController = UINavigationController(rootViewController: FeedViewController())
        feedViewController.title = "Лента"
        feedViewController.view.backgroundColor = .systemBackground
        
        let profileViewController = UINavigationController(rootViewController: ProfileViewController())
        profileViewController.title = "Профиль"
        profileViewController.view.backgroundColor = .systemMint
        
        let tabBarController = UITabBarController()
        
        feedViewController.tabBarItem = UITabBarItem.init(title: "Лента", image: UIImage(systemName: "network"), tag: 0)
        profileViewController.tabBarItem = UITabBarItem.init(title: "Профиль", image: UIImage(named: "Profile"), tag: 1)

        tabBarController.viewControllers = [feedViewController, profileViewController]
        tabBarController.selectedIndex = 0
        
        window.rootViewController = tabBarController
        window.makeKeyAndVisible()
        self.window = window
     
    }

    func sceneDidDisconnect(_ scene: UIScene) {

    }

    func sceneDidBecomeActive(_ scene: UIScene) {
       
    }

    func sceneWillResignActive(_ scene: UIScene) {
       
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
      
    }

}

