//
//  Lyrics.swift
//  Expandable-TableViewCell-StackView
//
//  Created by Akash Malhotra on 7/8/16.
//  Copyright © 2016 Akash Malhotra. All rights reserved.
//

import Foundation

class Lyrics {
    
    var artist: String?
    var song: String?
    var lyricsSample: String?
    var lyricsShown = false
    
    init(artist: String, song: String, lyricsSample: String) {
        self.artist = artist
        self.song = song
        self.lyricsSample = lyricsSample
    }
}