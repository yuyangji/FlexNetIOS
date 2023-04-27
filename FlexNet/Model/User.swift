//
//  User.swift
//  FlexNet
//
//  Created by Yuyang Ji on 27/4/2023.
//

import Foundation


struct User : Codable {
    
    var id : String
    var firstName : String
    var lastName : String
    var email : String
    var phoneNumber : String = ""
    var aboutMe : String = ""
    
    private enum CodingKeys:String, CodingKey {
        case id
        case firstName = "first name"
        case lastName = "last name"
        case email
        case aboutMe = "about me"
    }
    
    func toFirestoreData() throws -> [String: Any]{
        let encoder = JSONEncoder()
        let data = try encoder.encode(self)
        let jsonObject = try JSONSerialization.jsonObject(with: data, options: [])
        guard let dictionary = jsonObject as? [String: Any] else{
            throw NSError(domain: "User", code: -1)
        }
        return dictionary
    }
}
