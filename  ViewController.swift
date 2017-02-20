//
//  ViewController.swift
//  Lyrics
//
//  Created by A1 on 18/02/17.
//  Copyright © 2017 ABC. All rights reserved.
//

import UIKit

class ViewController: BaseViewController,UISearchBarDelegate,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    var songList = SongList()
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        self.title = "Songs"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
    //searchBar.text
            }
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar){
        self.view.endEditing(true)
        songList.songs.removeAll()
        songList.term = searchBar.text! //"tom waits"
        //webServiceCall.searchItunesFor(searchTerm: "tom+waits")
        self.startActivitIndicator()
        songList.callServiceWithQueryString(success: { (songs) in
            DispatchQueue.main.async() { () -> Void in
            self.tableView.reloadData()
            self.stopActivitIndicator()
            }
        }) { (error) in
            DispatchQueue.main.async() { () -> Void in
            print(error)
            self.stopActivitIndicator()
            }
            
        }
    }
    
    //TableView Delegate methods
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int

    {
        return songList.songs.count
    }
    //@available(iOS 2.0, *)
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    //track names, artist name, album name
        let cell = tableView.dequeueReusableCell(withIdentifier: "LyricsCell") as! LyricsCell
        let song = songList.songs[indexPath.row]
        cell.fillCell(track: song.trackName,
                      album: song.collectionName,
                      artist:song.artistName,
                      albumImageUrl:song.artworkUrl60)
        return cell
    }
    //[self performSegueWithIdentifier:@"SegueIdentifer" sender:cell];
    //navigateToSongDetails
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
    
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if  segue.identifier == "navigateToSongDetails" {
            let destination = segue.destination as? DetailViewController
            let selectedRow = self.tableView.indexPathForSelectedRow?.row
            destination?.songLyrics.artist = songList.songs[selectedRow!].artistName
            destination?.songLyrics.song = songList.songs[selectedRow!].trackName
            destination?.songLyrics.albumImageUrl = songList.songs[selectedRow!].artworkUrl100
            destination?.songLyrics.album = songList.songs[selectedRow!].collectionName
            destination?.title = songList.songs[selectedRow!].trackName
            //print("hello")
        }
            //let destination = segue.destination as? DetailViewController,
            //blogIndex = tableView.indexPathForSelectedRow?.row
 //       {
            //destination.blogName = swiftBlogs[blogIndex]
      //  }
    }
    
    
}

