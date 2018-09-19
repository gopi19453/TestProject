//
//  DynamicMember.swift
//  PracticeSwiftApiApp
//
//  Created by Gopi Krishna on 18/09/18.
//  Copyright © 2018 Gopi Krishna. All rights reserved.
//

import Foundation

class Sport {
    
    var name:String
    var type:String
    let rest = ["Saple"]
    
    init(name:String,type:String) {
        self.name = name

        self.type = type
    }
    
    subscript() -> String {
        return name + " : " + type
    }
}

