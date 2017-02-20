//
//  DetailViewController.swift
//  Lyrics
//
//  Created by A1 on 19/02/17.
//  Copyright © 2017 ABC. All rights reserved.
//

import UIKit

class DetailViewController: BaseViewController {

    @IBOutlet weak var trackName: UILabel!
    
    @IBOutlet weak var albumName: UILabel!
    @IBOutlet weak var artistName: UILabel!
    @IBOutlet weak var albumImage: UIImageView!
    @IBOutlet weak var lyrics: UILabel!

    var songLyrics = SongLyrics()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.startActivitIndicator()
        songLyrics.callServiceWithQueryString(success: { (songs) in
            DispatchQueue.main.async() { () -> Void in
               // self.tableView.reloadData()
                self.bindDataWithUI()
                self.stopActivitIndicator()
            }
        }) { (error) in
            DispatchQueue.main.async() { () -> Void in
                print(error)
                self.stopActivitIndicator()
            }
            
        }

 
    }
    func bindDataWithUI(){
        
        /*
         var artist = ""
         var albumImageUrl = ""
         var song = ""
         var lyrics = ""
         var url = ""
         */
    self.trackName.text = songLyrics.song
    self.albumName.text = songLyrics.album
    self.artistName.text = songLyrics.artist
    self.albumImage.downloadImage(url: songLyrics.albumImageUrl)
    self.lyrics.attributedText = NSAttributedString(string:songLyrics.lyrics)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
