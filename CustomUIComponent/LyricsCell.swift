//
//  LyricsCellTableViewCell.swift
//  Lyrics
//
//  Created by A1 on 19/02/17.
//  Copyright © 2017 ABC. All rights reserved.
//

import UIKit

class LyricsCell: UITableViewCell {

    @IBOutlet weak var trackName: UILabel!
    
    @IBOutlet weak var albumName: UILabel!
    @IBOutlet weak var artistName: UILabel!
    @IBOutlet weak var albumImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func fillCell(track:String,
        album:String,
        artist:String,
        albumImageUrl:String){
    self.trackName.text = track
    self.albumName.text = album
    self.artistName.text = artist
    self.albumImage.image = UIImage()
    self.albumImage.downloadImage(url: albumImageUrl)
    }
    

}
