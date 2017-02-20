//
//  SongLyrics.swift
//  Lyrics
//
//  Created by A1 on 19/02/17.
//  Copyright © 2017 ABC. All rights reserved.
//

import Foundation
class SongLyrics : BaseDataObject {
    
    var artist = ""
    var albumImageUrl = ""
    var song = ""
    var lyrics = ""
    var album = ""
    var url = ""
    override func baseURL() -> String{
        return "http://lyrics.wikia.com/api.php"
    }
    
    override func queryStringParameters()->String {
        let song = urlEncodedString(str: self.song)
        let artist = urlEncodedString(str: self.artist)
        return "func=getSong&artist=\(artist)&song=\(song)&fmt=json"
        }
    override func parse(json: AnyObject) {
        
            if let val = json.value(forKey:"lyrics") {
                
                self.lyrics = val as! String
            }
            if let val = json.value(forKey:"url") {
                
                self.url = val as! String
            }
    }
}
