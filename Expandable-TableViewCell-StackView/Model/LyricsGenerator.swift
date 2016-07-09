//
//  LyricsGenerator.swift
//  Expandable-TableViewCell-StackView
//
//  Created by Home on 09/07/16.
//  Copyright © 2016 Akash Malhotra. All rights reserved.
//

import Foundation

class LyricsGenerator {
    
    static func getLyrics() -> [Lyrics] {
        var allLyrics = [Lyrics]()
        
        allLyrics.append(Lyrics(artist: Artists.THE_BIRTHDAY_MASSACRE.rawValue, song: Songs.DIVIDE.rawValue, lyricsSample: LyricsSamples.DIVIDE.rawValue))
        allLyrics.append(Lyrics(artist: Artists.LINKIN_PARK.rawValue, song: Songs.IN_THE_END.rawValue, lyricsSample: LyricsSamples.IN_THE_END.rawValue))
        allLyrics.append(Lyrics(artist: Artists.AVENGED_SEVENFOLD.rawValue, song: Songs.HEAVEN.rawValue, lyricsSample: LyricsSamples.HEAVEN.rawValue))
        allLyrics.append(Lyrics(artist: Artists.FIVE_FINGER_DEATH_PUNCH.rawValue, song: Songs.BAD_COMPANY.rawValue, lyricsSample: LyricsSamples.BAD_COMPANY.rawValue))
        allLyrics.append(Lyrics(artist: Artists.BOB_DYLAN.rawValue, song: Songs.MOST_LIKELY.rawValue, lyricsSample: LyricsSamples.MOST_LIKELY.rawValue))
        
        return allLyrics
    }
}