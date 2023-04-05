//
//  ViewController.swift
//  LoginPage
//
//  Created by poskreepta on 03.04.23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = color.darkGrey
        view.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([view.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
//                                     view.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0),
//                                     view.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0),
//                                     view.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 0)])
        
        //создадие и добавление картинки лого на view
        let imageLogo = UIImageView(image: UIImage(systemName: "envelope.open"))
        imageLogo.tintColor = color.whith
        view.addSubview(imageLogo)
        
        imageLogo.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([imageLogo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                                     imageLogo.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80),
                                     imageLogo.widthAnchor.constraint(equalToConstant: 170),
                                     imageLogo.heightAnchor.constraint(equalToConstant: 150)])
       
        
        //создадание и добавление UILabel (данные пользователя)
        let usernameLabel = UILabel()
        usernameLabel.text = "Username"
        usernameLabel.textColor = color.whith
        usernameLabel.backgroundColor = color.lightGrey
        usernameLabel.textAlignment = .center
        usernameLabel.layer.cornerRadius = 60/2
        usernameLabel.clipsToBounds = true
        view.addSubview(usernameLabel)
        
        usernameLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([usernameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                                     usernameLabel.topAnchor.constraint(equalTo: view.centerYAnchor, constant: -80),
                                     usernameLabel.widthAnchor.constraint(equalToConstant: 320),
                                     usernameLabel.heightAnchor.constraint(equalToConstant: 60)])
        
        let passwordLabel = UILabel()
        passwordLabel.text = "Password"
        passwordLabel.textColor = color.whith
        passwordLabel.backgroundColor = color.lightGrey
        passwordLabel.textAlignment = .center
        passwordLabel.layer.cornerRadius = 60/2
        passwordLabel.clipsToBounds = true
        view.addSubview(passwordLabel)
        
        passwordLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([passwordLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                                     passwordLabel.topAnchor.constraint(equalTo: view.centerYAnchor, constant: 10),
                                     passwordLabel.widthAnchor.constraint(equalToConstant: 320),
                                     passwordLabel.heightAnchor.constraint(equalToConstant: 60)])
        
        //создадание и добавление UIButton (Sing In)
        let signInButton = UIButton()
        signInButton.setTitle("Sign in", for: .normal)
        signInButton.setTitleColor(color.darkGrey, for: .normal)
        signInButton.titleLabel?.textAlignment = .center
        signInButton.backgroundColor = color.whith
        signInButton.layer.cornerRadius = 60/2
        signInButton.clipsToBounds = true
        view.addSubview(signInButton)
        
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([signInButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                                     signInButton.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 100),
                                     signInButton.widthAnchor.constraint(equalToConstant: 320),
                                     signInButton.heightAnchor.constraint(equalToConstant: 60)])


    }


}

