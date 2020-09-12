//
//  SettingsViewController.swift
//  IdeasLab
//
//  Created by Zacc Konfor on 9/10/20.
//  Copyright © 2020 Zacc Konfor. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
      
    }
    
    override func viewDidLayoutSubviews() {
                super.viewDidLayoutSubviews()
                setNavBar()
            }
       
       private func setNavBar() {
                
                let navBar = UINavigationBar(frame: CGRect(x: 0, y: 50, width: view.frame.size.width, height: 50))
                navBar.prefersLargeTitles = true
                navBar.translatesAutoresizingMaskIntoConstraints = true
                      view.addSubview(navBar)
                
                let navItem = UINavigationItem(title: "MY SETTINGS")
                let searchItem = UIBarButtonItem(barButtonSystemItem: .search, target: nil, action: #selector(search))
        
                      navItem.rightBarButtonItem = searchItem
                      navBar.setItems([navItem], animated: false)
                navBar.tintColor = .black
                navBar.backgroundColor = .white
            
            }
}

extension SettingsViewController {
    
    @objc func search() {
                
                 print("searching!!!!!")
             }
             
    @objc func back() {
                 
                 navigationController?.popToRootViewController(animated: true)
                 print("Back!!!")
             }
}
