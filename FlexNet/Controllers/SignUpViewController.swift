//
//  SignUpViewController.swift
//  FlexNet
//
//  Created by Yuyang Ji on 27/4/2023.
//

import UIKit
import FirebaseFirestoreSwift
import FirebaseAuth
import FirebaseFirestore

class SignUpViewController: UIViewController {

    private var rootView: SignUpView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rootView = SignUpView()
        view = rootView
        
        rootView.backgroundColor = .white
        
        // Do any additional setup after loading the view.
    }
    

    @objc private func signUpButtonTapped(_ sender:UIButton){
       
        guard let email = rootView.emailTextField.text, let password = rootView.passwordTextField.text, let firstName = rootView.firstNameTextField.text, let lastName = rootView.lastNameTextField.text
        else{
            return
        }
        
        Auth.auth().createUser(withEmail: email, password: password ){
            result, error in
            if let error = error {
                print("Failed to register user \(error.localizedDescription)")
                return
            }
            
            guard let user = result?.user else {
                return
            }
            
            let userData = [
                "email" : email,
                "firstName" : firstName,
                "lastName" : lastName,
                "uid" : user.uid
            ]
            
            
            Firestore.firestore().collection("users")
                .document(user.uid)
                .setData(userData){_ in
                    self.performSegue(withIdentifier: "HomeSegue", sender: self)
                }
            
        }
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
