//
//  SignUpViewController.swift
//  IdeasLab
//
//  Created by Zacc Konfor on 7/21/20.
//  Copyright © 2020 Zacc Konfor. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    weak var delegate: SignUpViewDelegate?
    var name = CustomTextField()
    var email = CustomTextField()
    var username = CustomTextField()
    var password = CustomTextField()
    var verifyPassword = CustomTextField()
    var doneButton = CustomButton()
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        loadViews()
        setupButton()

        
    }
    
    override func viewDidLayoutSubviews() {
         super.viewDidLayoutSubviews()
         setNavBar()
     }
     
}

extension SignUpViewController {
    
   private func loadViews() {
        let stackview = CustomStackView.init(arrangedSubviews: [addName(),addEmail(),addUserName(),addPassword(),addVerifyPassword()])
          let margins = self.view.layoutMarginsGuide
        view.addSubview(stackview)
        
        NSLayoutConstraint.activate([
            stackview.topAnchor.constraint(equalTo: margins.topAnchor, constant: 75),
            stackview.centerXAnchor.constraint(equalTo: margins.centerXAnchor),
            stackview.bottomAnchor.constraint(equalTo: margins.centerYAnchor, constant: 90)
        ])
        
    }
}

extension SignUpViewController {
    
  fileprivate  func addName() -> CustomTextField {
        let textfield = name
        textfield.placeholder = "Name"
        return textfield
    }
    
   fileprivate func addEmail() -> CustomTextField {
        let texfield = email
        texfield.placeholder = "Email"
        return texfield
    }
    
   fileprivate func addUserName() -> CustomTextField {
        let textfield = username
        textfield.placeholder = "Username"
        return textfield
    }
    
   fileprivate func addPassword() -> CustomTextField {
        let textfield = password
        textfield.placeholder = "Password"
        return textfield
    }
    
   fileprivate func addVerifyPassword() -> CustomTextField {
        let textfield = verifyPassword
        textfield.placeholder = "Verify Password"
        return textfield
    }
}

extension SignUpViewController {
    
   private func setupButton() {
        let button = doneButton
        let margins = self.view.layoutMarginsGuide
        button.setTitle("DONE", for: .normal)
        button.backgroundColor = Components.standardBlue
        button.layer.borderColor = UIColor.white.cgColor
        button.setTitleColor(.black, for: .normal)
     
        button.addTarget(self, action: #selector(tapDoneButton), for: .touchUpInside)
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.heightAnchor.constraint(equalToConstant: 70),
            button.widthAnchor.constraint(equalToConstant: 300),
            button.centerXAnchor.constraint(equalTo: margins.centerXAnchor),
            button.bottomAnchor.constraint(equalTo: margins.bottomAnchor)
        ])
    }
}

extension SignUpViewController {
    private func setNavBar() {
    let margins = self.view.layoutMarginsGuide
    let navBar = UINavigationBar(frame: CGRect(x: 0, y: 30, width: margins.layoutFrame.width, height: 50))
         navBar.prefersLargeTitles = true
               view.addSubview(navBar)
    let backItem = UIBarButtonItem()
                  backItem.action = #selector(back)
                  backItem.title = "back"
                   
               let navItem = UINavigationItem(title: "SIGN UP")
               let doneItem = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(done))
               navItem.leftBarButtonItem = backItem
               navItem.rightBarButtonItem = doneItem
               navBar.setItems([navItem], animated: false)
    navBar.tintColor = .black
    navBar.barTintColor = Components.standardBlue
     }
    
}

extension SignUpViewController {
    
    @objc func tapDoneButton() {
              delegate?.didTapDone()
          }
        
    @objc func done () {
               view.endEditing(true)
           }
    
    @objc func back() {
            navigationController?.popToRootViewController(animated: true)
        }
}

    
  
    

