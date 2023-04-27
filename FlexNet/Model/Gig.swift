//
//  Job.swift
//  FlexNet
//
//  Created by Yuyang Ji on 27/4/2023.
//

import Foundation


struct Gig : Codable {
    
    var userId : String
    var title : String
    var category : [String]
    var description: String
    var requirements : [String]
    var price : Float
    var negotiable : Bool
    
}
