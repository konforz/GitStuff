//
//  LoginViewController.swift
//  IdeasLab
//
//  Created by Zacc Konfor on 7/23/20.
//  Copyright © 2020 Zacc Konfor. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    weak var delegate: LoginViewDelegate?
    var titleLabel = CustomLabel()
    var signIn = CustomButton()
    var username = CustomTextField()
    var password = CustomTextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        loadViews()
        setTitleLabel()
        setupButton()
        
    }
    
    override func viewDidLayoutSubviews() {
         super.viewDidLayoutSubviews()
         setNavBar()
     }
     
}

extension LoginViewController {
    
    private func setupButton() {
           let button = signIn
           let margins = self.view.layoutMarginsGuide
           button.setTitle("SIGN IN", for: .normal)
        button.backgroundColor = .white
           button.layer.borderColor = UIColor.white.cgColor
           button.setTitleColor(.black, for: .normal)
        
           button.addTarget(self, action: #selector(tapSignIn), for: .touchUpInside)
           view.addSubview(button)
           
           NSLayoutConstraint.activate([
               button.heightAnchor.constraint(equalToConstant: 70),
               button.widthAnchor.constraint(equalToConstant: 300),
               button.centerXAnchor.constraint(equalTo: margins.centerXAnchor),
               button.bottomAnchor.constraint(equalTo: margins.bottomAnchor)
           ])
       }
}

extension LoginViewController {
    private func loadViews() {
         let stackview = CustomStackView.init(arrangedSubviews: [addUsername(),addPassword()])
           let margins = self.view.layoutMarginsGuide
        stackview.spacing = 25
         view.addSubview(stackview)
         
         NSLayoutConstraint.activate([
            
             stackview.centerXAnchor.constraint(equalTo: margins.centerXAnchor),
             stackview.bottomAnchor.constraint(equalTo: margins.centerYAnchor, constant: 110)
         ])
         
     }
}

extension LoginViewController {
    
    fileprivate func addUsername() -> CustomTextField {
        let textField = username
        textField.placeholder = "Username"
        return textField
    }
    
    fileprivate func addPassword() -> CustomTextField {
        let textField = password
        textField.placeholder = "Password"
        return textField
    }
    
}

extension LoginViewController {
    
    private func setTitleLabel() {
        let label = titleLabel
               let margins = self.view.layoutMarginsGuide
               label.text = "I-XpertZ Sign In"
               label.font = UIFont.init(name: "AvenirNext-DemiBold", size: 40)
               label.textColor = .white
               label.layer.borderWidth = 2.0
               label.layer.borderColor = UIColor.blue.cgColor
               
               view.addSubview(label)
               NSLayoutConstraint.activate([label.centerXAnchor.constraint(equalTo: margins.centerXAnchor),
                   label.centerYAnchor.constraint(equalTo: margins.centerYAnchor, constant: -50)])
    }
}

extension LoginViewController {
    
    @objc func done() {
        view.endEditing(true)
       }
       
    @objc func back() {
        navigationController?.popToRootViewController(animated: true)
       }
    
    @objc func tapSignIn() {
        print("Login!!")
        delegate?.didTapSignIn()
    }
}

extension LoginViewController {
    
    private func setNavBar() {
             
             let navBar = UINavigationBar(frame: CGRect(x: 0, y: 50, width: view.frame.size.width, height: 50))
             navBar.prefersLargeTitles = true
                   view.addSubview(navBar)
             
             let navItem = UINavigationItem(title: "LOGIN")
             let doneItem = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(done))
             let backItem = UIBarButtonItem()
                 backItem.action = #selector(back)
                 backItem.title = "back"
                   navItem.leftBarButtonItem = backItem
                   navItem.rightBarButtonItem = doneItem
                   navBar.setItems([navItem], animated: false)
          navBar.tintColor = .black
          navBar.barTintColor = .white
         }
}
