//
//  CommonMethods.swift
//  Lyrics
//
//  Created by A1 on 19/02/17.
//  Copyright © 2017 ABC. All rights reserved.
//

import Foundation
class CommonMethods {
    static let sharedInstance : CommonMethods = {
        let instance = CommonMethods()
        return instance
    }()

    func convertToDictionary(text: String) -> [String: Any]? {
    if let data = text.data(using: .utf8) {
        do {
            if JSONSerialization.isValidJSONObject(obj: text) {
            return try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
            } else {
                // Handle Invalid Json with hard coded logic
               let lyrics = text.components(separatedBy: "lyrics\':")[1].components(separatedBy: "\',")[0]
              let dict = Dictionary(dictionaryLiteral:("lyrics",lyrics))
                return dict
               
            }
        } catch {
            print(error.localizedDescription)
        }
    }
    return nil
}
}
