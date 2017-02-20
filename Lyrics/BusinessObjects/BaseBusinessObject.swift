//
//  BaseBusinessObject.swift
//  Lyrics
//
//  Created by A1 on 19/02/17.
//  Copyright © 2017 ABC. All rights reserved.
//

import Foundation
class BaseBusinessObject {
    func parameterName()->String
    {
        return ""
    }
    
    func parameters()->NSDictionary
    {
        return NSDictionary()
    }
    func parse(json:NSDictionary)
    {
        
    }
}
