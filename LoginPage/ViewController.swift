//
//  ViewController.swift
//  LoginPage
//
//  Created by poskreepta on 03.04.23.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    let imageLogo = UIImageView()
    let username = UITextField()
    let password = UITextField()
    let enterUserDataLabel = UILabel()
    let pressSignInLabel = UILabel()
    let signInButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        username.delegate = self
        password.delegate = self
        setupViews()
        setupConstraints()
    }
        
    func setupViews() {
        
        view.backgroundColor = color.darkGrey
        
//        создадие и добавление картинки лого на view
        imageLogo.image = UIImage(systemName: "envelope.open")
        imageLogo.tintColor = color.whith
        view.addSubview(imageLogo)
        imageLogo.translatesAutoresizingMaskIntoConstraints = false
        
//        создадание и добавление UITextField (данные пользователя)
        username.borderStyle = .roundedRect
        username.placeholder = "Username"
        username.keyboardType = .emailAddress
        username.textAlignment = .center
        username.attributedPlaceholder = NSAttributedString(string: "Username", attributes: [NSAttributedString.Key.foregroundColor : color.whith])
        username.backgroundColor = color.lightGrey
        username.textColor = color.whith
        username.layer.cornerRadius = 60/2
        username.clipsToBounds = true
        view.addSubview(username)
        username.translatesAutoresizingMaskIntoConstraints = false
        
        
        password.borderStyle = .roundedRect
        password.placeholder = "Password"
        password.keyboardType = .default
        password.textAlignment = .center
        password.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor : color.whith])
        password.backgroundColor = color.lightGrey
        password.textColor = color.whith
        password.layer.cornerRadius = 60/2
        password.clipsToBounds = true
        view.addSubview(password)
        password.translatesAutoresizingMaskIntoConstraints = false
        
        
//        создадание и добавление UILabel (поясняющие дейсвтия для юзера)
        enterUserDataLabel.text = "Enter the User Data"
        enterUserDataLabel.textColor = color.whith
        enterUserDataLabel.textAlignment = .center
        enterUserDataLabel.font = UIFont.systemFont(ofSize: 14)
        view.addSubview(enterUserDataLabel)
        enterUserDataLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        pressSignInLabel.text = "Press Sign In To Enter"
        pressSignInLabel.textColor = color.whith
        pressSignInLabel.textAlignment = .center
        pressSignInLabel.font = UIFont.systemFont(ofSize: 14)
        view.addSubview(pressSignInLabel)
        pressSignInLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
//        создадание и добавление UIButton (Sing In)
        signInButton.setTitle("Sign in", for: .normal)
        signInButton.setTitleColor(color.darkGrey, for: .normal)
        signInButton.titleLabel?.textAlignment = .center
        signInButton.backgroundColor = color.whith
        signInButton.layer.cornerRadius = 60/2
        signInButton.clipsToBounds = true
        view.addSubview(signInButton)
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    
    func setupConstraints() {
        NSLayoutConstraint.activate([imageLogo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                                     imageLogo.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80),
                                     imageLogo.widthAnchor.constraint(equalToConstant: 170),
                                     imageLogo.heightAnchor.constraint(equalToConstant: 150)])
        
        NSLayoutConstraint.activate([username.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                                     username.topAnchor.constraint(equalTo: view.centerYAnchor, constant: -80),
                                     username.widthAnchor.constraint(equalToConstant: 320),
                                     username.heightAnchor.constraint(equalToConstant: 60)])
        
         NSLayoutConstraint.activate([password.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                                      password.topAnchor.constraint(equalTo: view.centerYAnchor, constant: 10),
                                      password.widthAnchor.constraint(equalToConstant: 320),
                                      password.heightAnchor.constraint(equalToConstant: 60)])
        
        NSLayoutConstraint.activate([enterUserDataLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                                     enterUserDataLabel.topAnchor.constraint(equalTo: password.bottomAnchor, constant: 10),
                                     enterUserDataLabel.widthAnchor.constraint(equalToConstant: 320),
                                     enterUserDataLabel.heightAnchor.constraint(equalToConstant: 60)])
        
         NSLayoutConstraint.activate([signInButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                                      signInButton.topAnchor.constraint(equalTo: enterUserDataLabel.bottomAnchor, constant: 90),
                                      signInButton.widthAnchor.constraint(equalToConstant: 320),
                                      signInButton.heightAnchor.constraint(equalToConstant: 60)])
        
         NSLayoutConstraint.activate([pressSignInLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                                      pressSignInLabel.topAnchor.constraint(equalTo: signInButton.bottomAnchor, constant: 10),
                                      pressSignInLabel.widthAnchor.constraint(equalToConstant: 320),
                                      pressSignInLabel.heightAnchor.constraint(equalToConstant: 60)])

    }
    
    
}

