//
//  SignUpView.swift
//  FlexNet
//
//  Created by Yuyang Ji on 27/4/2023.
//

import UIKit

class SignUpView: UIView {

    private let titleLabel : UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 30, weight: .semibold)
        label.textAlignment = .left
        label.text = "Sign Up"
        return label
    }()
    
    private let signUpGoogleLabel : UILabel = {
        let label = UILabel()
         label.translatesAutoresizingMaskIntoConstraints = false
         label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 20, weight: .light)
         label.textAlignment = .left
         label.text = "sign up with google"
         return label
    }()
    
    
    
    
    let firstNameTextField : TextFieldWithIcon = {
        let textField = TextFieldWithIcon()
        textField.placeholder = "First Name"
        textField.addIcon(icon: UIImage(systemName: "person.fill")!)
        return textField
    }()
    
    let lastNameTextField : TextFieldWithIcon = {
        let textField = TextFieldWithIcon()
        textField.placeholder = "Last Name"
        textField.addIcon(icon: UIImage(systemName: "person.fill")!)
        return textField
    }()
    let emailTextField : TextFieldWithIcon = {
        let textField = TextFieldWithIcon()
        textField.placeholder = "Email"
        textField.addIcon(icon: UIImage(systemName: "person.fill")!)
        textField.keyboardType = .emailAddress
        return textField
    }()
    let confirmEmail : TextFieldWithIcon = {
        let textField = TextFieldWithIcon()
        textField.placeholder = "Confirm Email"
        textField.addIcon(icon: UIImage(systemName: "person.fill")!)
        textField.keyboardType = .emailAddress
        return textField
    }()
    let passwordTextField : TextFieldWithIcon = {
        let textField = TextFieldWithIcon()
        textField.placeholder = "Password"
        textField.addIcon(icon: UIImage(systemName: "lock.fill")!)
        return textField
    }()
    let confirmPassword : TextFieldWithIcon = {
        let textField = TextFieldWithIcon()
        textField.placeholder = "Confirm Password"
        textField.addIcon(icon: UIImage(systemName: "lock.fill")!)
        return textField
    }()
    
    private let stackView : UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 25
        stack.distribution = .fillEqually
        return stack
    }()
    
    let signUpButton : UIButton = {
        var config:UIButton.Configuration = .filled()
        config.baseBackgroundColor = .systemBlue
        config.baseForegroundColor = .white
        config.title = "Sign Up"
        config.cornerStyle = .capsule
        config.imagePadding = 10
        let button = UIButton(configuration: config)
        let rightIcon = UIImage(systemName: "arrow.right")
        button.setImage(rightIcon, for: .normal)
        
        // make the arrow be shown on the right
        button.semanticContentAttribute = .forceRightToLeft
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        addSubview(titleLabel)
        addSubview(stackView)
        addSubview(signUpButton)
        
        [firstNameTextField, lastNameTextField, emailTextField, confirmEmail, passwordTextField, confirmPassword].forEach{
            $0.heightAnchor.constraint(equalToConstant: 45).isActive = true
            stackView.addArrangedSubview($0)
            
        }
        
        
        
        NSLayoutConstraint.activate([
            titleLabel.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor,constant: 30),
            titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 30),
            stackView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 25),
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackView.leftAnchor.constraint(equalTo: leftAnchor,constant: 30),
            stackView.rightAnchor.constraint(equalTo: rightAnchor,constant: -30),
            
            signUpButton.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 50),
            signUpButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            signUpButton.widthAnchor.constraint(equalToConstant: 175),
            signUpButton.heightAnchor.constraint(equalToConstant: 50)
            
        ])
        

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
