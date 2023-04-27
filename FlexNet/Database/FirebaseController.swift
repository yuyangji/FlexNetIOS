//
//  FirebaseControllerClass.swift
//  lab03
//
//  Created by Yuyang Ji on 20/4/2023.
//

import UIKit
import FirebaseFirestoreSwift
import FirebaseAuth
import FirebaseFirestore


class FirebaseController: NSObject, DatabaseProtocol {

    var authListener = MulticastDelegate<UserAuthListener>()
    var currentUser: FirebaseAuth.User?
    
    
    override init(){
        
        
    }
    
    func cleanup() {
    }
    

}
    
