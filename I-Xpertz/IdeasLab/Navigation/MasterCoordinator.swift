//
//  MasterCoordinator.swift
//  IdeasLab
//
//  Created by Zacc Konfor on 7/22/20.
//  Copyright © 2020 Zacc Konfor. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator {
    
    var childCordinators : [Coordinator] {get set}
    var navigationController: UINavigationController {get set}
    
    func start()
}

final class MasterCoordinator: Coordinator {
    
    
    var childCordinators = [Coordinator]()
    
    var navigationController: UINavigationController
    var window: UIWindow?
   
    init(scene: UIWindow, navigation: UINavigationController) {
        self.window = scene
        self.navigationController = navigation
        scene.configure(with: navigation)
        navigation.configuration()
    }
    
    convenience init() {
        self.init(scene: UIWindow(), navigation: UINavigationController())
    }
    
    func start() {
        let mainView = ViewController()
        mainView.delegate = self
        navigationController.pushViewController(mainView, animated: true)
    }

}

extension MasterCoordinator: ViewCtrlDelegate {
    
    func didTapLogin() {
        let login = LoginViewController()
        login.delegate = self
        navigationController.pushViewController(login, animated: true)
    }
    
    func didTapSignUp() {
        let signUp = SignUpViewController()
        signUp.delegate = self
        navigationController.pushViewController(signUp, animated: true)
    }
    
}

extension MasterCoordinator: SignUpViewDelegate {
    
    func didTapDone() {
        let login = LoginViewController()
        login.delegate = self
        navigationController.pushViewController(login, animated: true)
    }
    
}

extension MasterCoordinator: LoginViewDelegate {
    
    func didTapSignIn() {
        
        let home = HomeViewController()
        let favorites = FavoriteViewController()
        let settings = SettingsViewController()
        let tabBar = TabBarViewController()
        
        home.title = "HOME"
        favorites.title = "FAVORITES"
        settings.title = "SETTINGS"
        
        tabBar.setViewControllers([home,favorites,settings], animated: true)
        guard let items = tabBar.tabBar.items else {return}
        let images = ["house", "star", "gear"]
        
        
        for x in 0..<items.count {
            items[x].badgeValue = Components.badgeValue 
            items[x].image = UIImage(systemName: images[x])
        }
        
        tabBar.modalPresentationStyle = .fullScreen
        navigationController.present(tabBar, animated: true)
       
    }
    
    
}

private extension UIWindow {
    
    func configure(with navigation: UINavigationController) {
        makeKeyAndVisible()
        rootViewController = navigation
    }
}

private extension UINavigationController {
    
    func configuration() {
        navigationBar.isHidden = true
        
    }
}
