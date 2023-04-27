//
//  Login.swift
//  FlexNet
//
//  Created by Yuyang Ji on 27/4/2023.
//

import UIKit

extension UITextField {
    func loginStyles(){
        clearButtonMode = .whileEditing
        translatesAutoresizingMaskIntoConstraints = false
        layer.borderWidth = 1
        layer.borderColor = UIColor.lightGray.cgColor
        layer.cornerRadius = 15
        layer.masksToBounds = true
        leftViewMode = .always
    }
    
}


class LoginView: UIView {

    private let titleLabel : UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 35, weight: .bold)
        label.textAlignment = .center
        label.text = "FlexNet"
        return label
    }()
    
    private let descriptionLabel : UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        label.text = "Flexible Freelance Networking"
        label.textAlignment = .center
        return label
    }()
    
    
     let emailTextField : UITextField = {
        let textField = UITextField()
        textField.placeholder = "Email"
        textField.keyboardType = .emailAddress
        textField.loginStyles()
        
        let padding :CGFloat = 12
        let iconSize : CGFloat = 25
        
        let iconContainer = UIView(frame: CGRect(x: 0, y: 0, width: iconSize + padding, height: iconSize))
        let iconView = UIImageView(image: UIImage(systemName: "envelope.fill"))
        iconView.tintColor = .gray
        iconView.contentMode = .scaleAspectFit
        iconView.frame = CGRect(x: padding/2, y: 0, width: iconSize, height: iconSize)
        iconContainer.addSubview(iconView)
        textField.leftView = iconContainer
        return textField
    }()
    
    
    
     let passwordTextField:UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.keyboardType = .default
        textField.textContentType = .password
        textField.loginStyles()
        
        let padding :CGFloat = 12
        let iconSize : CGFloat = 25
        
        let iconContainer = UIView(frame: CGRect(x: 0, y: 0, width: iconSize + padding, height: iconSize))
        let iconView = UIImageView(image: UIImage(systemName: "lock.fill"))
        iconView.tintColor = .gray
        iconView.contentMode = .scaleAspectFit
        iconView.frame = CGRect(x: padding/2, y: 0, width: iconSize, height: iconSize)
        iconContainer.addSubview(iconView)
        textField.leftView = iconContainer
        
        return textField
    }()

    
     let loginButton:UIButton = {
        var config:UIButton.Configuration = .filled()
        
        config.baseBackgroundColor = .systemBlue
        config.baseForegroundColor = .white
        config.title = "Login"
        config.cornerStyle = .capsule
        let button = UIButton(configuration: config)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
    }()
    
     let signUpButton:UIButton = {
        var config:UIButton.Configuration = .filled()
        config.baseBackgroundColor = .black
        config.baseForegroundColor = .white
        config.title = "Sign Up"
        config.cornerStyle = .capsule
        let button = UIButton(configuration: config)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: .zero)
        setUpViews()
        setUpLayout()
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setUpViews(){
        addSubview(titleLabel)
        addSubview(descriptionLabel)
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(loginButton)
        addSubview(signUpButton)
    }
    
    private func setUpLayout(){
        let textFieldHeight : CGFloat = 45
        
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 40),
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5),
            descriptionLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            
            emailTextField.leftAnchor.constraint(equalTo: leftAnchor, constant: 30),
            emailTextField.rightAnchor.constraint(equalTo: rightAnchor, constant: -30),
            emailTextField.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 50),
            emailTextField.heightAnchor.constraint(equalToConstant: textFieldHeight),
            
            
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20),
            passwordTextField.leftAnchor.constraint(equalTo: leftAnchor, constant: 30),
            passwordTextField.rightAnchor.constraint(equalTo: rightAnchor, constant: -30),
            passwordTextField.heightAnchor.constraint(equalToConstant: textFieldHeight),
            
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 40),
            loginButton.leftAnchor.constraint(equalTo: leftAnchor, constant: 60),
            loginButton.rightAnchor.constraint(equalTo: rightAnchor, constant: -60),
            loginButton.heightAnchor.constraint(equalToConstant: 55),
            
            signUpButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 30),
            signUpButton.leftAnchor.constraint(equalTo: leftAnchor, constant: 60),
            signUpButton.rightAnchor.constraint(equalTo: rightAnchor, constant: -60),
            signUpButton.heightAnchor.constraint(equalToConstant: 55),
            
            
        ])
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        endEditing(true)
    }
}
