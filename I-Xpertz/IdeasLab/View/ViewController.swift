//
//  ViewController.swift
//  IdeasLab
//
//  Created by Zacc Konfor on 7/20/20.
//  Copyright © 2020 Zacc Konfor. All rights reserved.


import UIKit


class ViewController: UIViewController {
    
    
    weak var delegate: ViewCtrlDelegate?
    var theSignUpButton = CustomButton()
    var theLoginButton = CustomButton()
    var theLabel = CustomLabel()
    var theWelcomeLabel = CustomLabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBlue
        setupWelcomeLabel()
        setupLabel()
        setupSignUP()
        setupLogin()
        
    }
}
   
// setup signUP
extension ViewController  {

   private func setupSignUP() {
        
      let signUpButton = theSignUpButton
        signUpButton.setTitle("SIGN UP", for: .normal)
        signUpButton.addTarget(self, action: #selector(tapSignUpButton), for: .touchUpInside)
        signUpButton.layer.borderColor = UIColor.white.cgColor
        signUpButton.layer.shadowColor = UIColor.white.cgColor
        signUpButton.backgroundColor = .orange
        let margins = self.view.layoutMarginsGuide
         view.addSubview(signUpButton)

    NSLayoutConstraint.activate([
            signUpButton.heightAnchor.constraint(equalToConstant: 70),
            signUpButton.widthAnchor.constraint(equalToConstant: 300),
            signUpButton.bottomAnchor.constraint(equalTo: margins.bottomAnchor, constant: -130),
            signUpButton.centerXAnchor.constraint(equalTo: margins.centerXAnchor)])
               
    }
    
}

// setup login
extension ViewController {
   private func setupLogin() {

    let loginButton = theLoginButton
    loginButton.setTitle("LOGIN", for: .normal)
    loginButton.addTarget(self, action: #selector(tapLoginButton), for: .touchUpInside)
    loginButton.setTitleColor(.orange, for: .normal)
    loginButton.backgroundColor = .white
    loginButton.layer.borderColor = UIColor.orange.cgColor
    loginButton.layer.shadowColor = UIColor.orange.cgColor
    
    let margins = self.view.layoutMarginsGuide
    view.addSubview(loginButton)
    
    NSLayoutConstraint.activate([
        loginButton.heightAnchor.constraint(equalToConstant: 70),
        loginButton.widthAnchor.constraint(equalToConstant: 300),
        loginButton.centerXAnchor.constraint(equalTo: margins.centerXAnchor),
        loginButton.bottomAnchor.constraint(equalTo: margins.bottomAnchor, constant: -50)
    ])
        }
    
}


// Setup company logo
extension ViewController {
    
   private func setupLabel() {
        let label = theLabel
        let margins = self.view.layoutMarginsGuide
        label.text = "I-XpertZ"
        label.font = UIFont.init(name: "AvenirNext-DemiBold", size: 60)
        label.textColor = .black
        label.layer.borderWidth = 4.0
        label.layer.borderColor = UIColor.blue.cgColor
        
        view.addSubview(label)
        NSLayoutConstraint.activate([label.centerXAnchor.constraint(equalTo: margins.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: margins.centerYAnchor, constant: -150)])
    }
}


// setup Welcome
extension ViewController {
    
   private func setupWelcomeLabel() {
        let welcomeLabel = theWelcomeLabel
        let margins = self.view.layoutMarginsGuide
        welcomeLabel.text = "WELCOME"
        welcomeLabel.textColor = .white
        welcomeLabel.font = UIFont.init(name: "AppleSDGothicNeo-Bold", size: 24)
        welcomeLabel.layer.borderColor = UIColor.clear.cgColor
        welcomeLabel.layer.shadowColor = UIColor.black.cgColor
        
        view.addSubview(welcomeLabel)
        NSLayoutConstraint.activate([
            welcomeLabel.centerXAnchor.constraint(equalTo: margins.centerXAnchor),
            welcomeLabel.centerYAnchor.constraint(equalTo: margins.centerYAnchor, constant: -40)])
    }
}
  
extension ViewController {
    
    @objc func tapLoginButton() {
        theLoginButton.shake()
        delegate?.didTapLogin()
        
       }
       
       @objc func tapSignUpButton() {
         theSignUpButton.shake()
          delegate?.didTapSignUp()
           
       }
}




