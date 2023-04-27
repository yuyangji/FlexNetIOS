//
//  LoginViewController.swift
//  FlexNet
//
//  Created by Yuyang Ji on 27/4/2023.
//

import UIKit



class LoginViewController: UIViewController {

    
    private var rootView: LoginView!
  
    override func loadView() {
        rootView = LoginView()
        view = rootView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rootView.loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        rootView.backgroundColor = .white
        // Do any additional setup after loading the view.
    }
    
    
    @objc private func loginButtonTapped(_ sender: UIButton){
        
    }
    

}
