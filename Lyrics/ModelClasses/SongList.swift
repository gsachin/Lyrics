//
//  SongList.swift
//  Lyrics
//
//  Created by A1 on 18/02/17.
//  Copyright © 2017 ABC. All rights reserved.
//

import Foundation
class SongList : BaseDataObject {
    
    var term : String = ""
    var songs:Array<Song> = Array<Song>()
    override func baseURL() -> String{
        return "https://itunes.apple.com/search"
    }
    override func parameters()->NSDictionary
    {
        let params = NSDictionary(objects: ["tom+waits"], forKeys:["term" as NSCopying])
        return params
    }
    override func queryStringParameters()->String {
        let itunesSearchTerm = self.term.replacingOccurrences(of:" ", with: "+")
        if let escapedSearchTerm = itunesSearchTerm.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)  {
            return "term=\(escapedSearchTerm)"
        }
        return ""
    }
    
    override func mathodType()->String {
        return "GET"
    }
    override func parse(json:AnyObject)
    {
        let itemList = json as! NSDictionary
        songs.removeAll()
        for item in itemList.value(forKey: "results") as! NSArray {
            let song = Song()
            song.parse(json: item as! NSDictionary)
            songs.append(song)
        }

        //return BaseModel()
    }



}
