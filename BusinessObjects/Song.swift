//
//  Song.swift
//  Lyrics
//
//  Created by A1 on 19/02/17.
//  Copyright © 2017 ABC. All rights reserved.
//

import Foundation
class Song : BaseBusinessObject {

    var wrapperType : String = "" //"track"
    var kind : String = "" // : "feature-movie"
    var trackId : Int = 0 // : 587751804
    var artistName : String = "" // : "Martin McDonagh"
    var trackName : String = "" // : "Seven Psychopaths"
    var trackCensoredName : String = "" // : "Seven Psychopaths"
    var trackViewUrl : String = "" // : "https://itunes.apple.com/us/movie/seven-psychopaths/id587751804?uo=4"
    var collectionName : String = ""
    var previewUrl : String = "" // : "http://video.itunes.apple.com/apple-assets-us-std-000001/Video/v4/be/8e/30/be8e3035-9ab5-8f4d-b942-d05d7d479e5d/mzvf_6070059411656064283.640x358.h264lc.D2.p.m4v"
    var artworkUrl30 : String = "" // : "http://is4.mzstatic.com/image/thumb/Video/v4/01/83/99/0183997d-8ec6-90a9-1077-eb85fb4f9e25/source/30x30bb.jpg"
    var artworkUrl60 : String = "" // : "http://is4.mzstatic.com/image/thumb/Video/v4/01/83/99/0183997d-8ec6-90a9-1077-eb85fb4f9e25/source/60x60bb.jpg"
    var artworkUrl100 : String = ""// : "http://is4.mzstatic.com/image/thumb/Video/v4/01/83/99/0183997d-8ec6-90a9-1077-eb85fb4f9e25/source/100x100bb.jpg"
    var collectionPrice : NSNumber = 0.00 // : 9.99
    var trackPrice : NSNumber = 0.00 // : 9.99
    var trackRentalPrice : NSNumber = 0.00 //  : 2.99
    var collectionHdPrice : NSNumber = 0.00 //  : 12.99
    var trackHdPrice : NSNumber = 0.00 //  : 12.99
    var trackHdRentalPrice : NSNumber = 0.00 //  : 3.99
    var releaseDate : String = "" //  : "2012-12-05T08:00:00Z"
    var collectionExplicitness : String = "" //  : "notExplicit"
    var trackExplicitness : String = "" //  : "notExplicit"
    var trackTimeMillis : NSNumber = 0.00 //  : 6623647
    var country : String = "" //  : "USA"
    var currency : String = "" //  : "USD"
    var primaryGenreName : String = "" //  : "Comedy"
    var contentAdvisoryRating : String = "" //  : "R"
    var longDescription : String = "" //  : "A struggling screenwriter inadvertently becomes entangled in the Los Angeles criminal underworld after his oddball friends kidnap a gangster's beloved Shih Tzu."
    var hasITunesExtras : Bool = false //  : true
    
    
    
    override func parameterName()->String
    {
        return ""
    }
    
    override func parameters()->NSDictionary
    {
        return NSDictionary()
    }
    override func parse(json:NSDictionary)
    {

    
            if let val = json.value(forKey:"wrapperType") {
                    self.wrapperType = val as! String
            }
            if let val = json.value(forKey:"kind") {
                
                    self.kind = val as! String
            }
            if let val = json.value(forKey:"trackId") {
                
                    self.trackId = Int(val as! NSNumber)
            }
        
            if let val = json.value(forKey:"artistName") {
                
                    self.artistName = val as! String
            }
        
            if let val = json.value(forKey:"trackName") {
                
                    self.trackName = val as! String
            }
        
            if let val = json.value(forKey:"trackCensoredName") {
                
                    self.trackCensoredName = val as! String
            }
        
            if let val = json.value(forKey:"trackViewUrl") {
                
                    self.trackViewUrl = val as! String
            }
        
            if let val = json.value(forKey:"previewUrl") {
                
                    self.previewUrl = val as! String
            }
        
            if let val = json.value(forKey:"artworkUrl30") {
                
                    self.artworkUrl30 = val as! String
            }
        
            if let val = json.value(forKey:"artworkUrl60") {
                
                    self.artworkUrl60 = val as! String
            }
        
            if let val = json.value(forKey:"artworkUrl100") {
                
                    self.artworkUrl100 = val as! String
            }
        
            if let val = json.value(forKey:"collectionPrice") {
                
                    self.collectionPrice = val as! NSNumber
            }
        
            if let val = json.value(forKey:"trackPrice") {
                
                    self.trackPrice = val as! NSNumber
            }
        
            if let val = json.value(forKey:"trackRentalPrice") {
                
                    self.trackRentalPrice = val as! NSNumber
            }
        
            if let val = json.value(forKey:"collectionHdPrice") {
                
                    self.collectionHdPrice = val as! NSNumber
            }
        
            if let val = json.value(forKey:"trackHdPrice") {
                
                    self.trackHdPrice = val as! NSNumber
            }
        
            if let val = json.value(forKey:"trackHdRentalPrice") {
                
                    self.trackHdRentalPrice = val as! NSNumber
            }
        
            if let val = json.value(forKey:"releaseDate") {
                
                    self.releaseDate = val as! String
            }
        
            if let val = json.value(forKey:"collectionExplicitness") {
                
                    self.collectionExplicitness = val as! String
            }
        
            if let val = json.value(forKey:"trackExplicitness") {
                
                    self.trackExplicitness = val as! String
            }
        
            if let val = json.value(forKey:"trackTimeMillis") {
                
                    self.trackTimeMillis = val as! NSNumber
            }
        
            if let val = json.value(forKey:"country") {
                
                    self.country = val as! String
            }
        
            if let val = json.value(forKey:"currency") {
                
                    self.currency = val as! String
            }
        
            if let val = json.value(forKey:"primaryGenreName") {
                
                    self.primaryGenreName = val as! String
            }
        
            if let val = json.value(forKey:"contentAdvisoryRating") {
                
                    self.contentAdvisoryRating = val as! String
            }
        
            if let val = json.value(forKey:"longDescription") {
                
                    self.longDescription = val as! String
            }
        
            if let val = json.value(forKey:"hasITunesExtras") {
                
                    self.hasITunesExtras = val as! Bool
            }
            if let val = json.value(forKey:"collectionName") {
            
                self.collectionName = val as! String
            }
        
        
    }
}
