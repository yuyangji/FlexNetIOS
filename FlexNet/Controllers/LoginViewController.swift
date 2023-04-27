//
//  LoginViewController.swift
//  FlexNet
//
//  Created by Yuyang Ji on 27/4/2023.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    
    private var rootView: LoginView!
    
    override func loadView() {
        rootView = LoginView()
        view = rootView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rootView.loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        rootView.signUpButton.addTarget(self, action: #selector(signUpButtonTapped), for: .touchUpInside)
        
        rootView.backgroundColor = .white
        // Do any additional setup after loading the view.
    }
    
    
    @objc private func loginButtonTapped(_ sender: UIButton){
        
        guard let email = rootView.emailTextField.text, let password = rootView.passwordTextField.text else{
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: password){
            result, error in
            if let error = error {
                print("Failed to register user \(error.localizedDescription)")
                return
            }
            guard (result?.user) != nil else {
                return
                
            }
            
            self.performSegue(withIdentifier: "HomeSegue", sender: self)
            
            
        }
    }
    
    @objc private func signUpButtonTapped(_ sender: UIButton){
        performSegue(withIdentifier: "SignUpSegue", sender: self)
    }
    

}
