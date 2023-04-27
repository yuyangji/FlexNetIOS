//
//  DatabaseProtocol.swift
//  lab03
//
//  Created by Yuyang Ji on 28/3/2023.
//

import Foundation

enum DatabaseChange{
    case add
    case remove
    case update
    
}

protocol UserAuthListener: AnyObject {
    func onLogin(userId: String)
}


protocol DatabaseProtocol: AnyObject {
    func cleanup()

}
