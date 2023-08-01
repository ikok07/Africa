//
//  VideoPlayerHelper.swift
//  Africa
//
//  Created by Kaloyan Petkov on 29.07.23.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

func playVideo(filename: String, fileFormat: String) -> AVPlayer {
    if let videoURL = Bundle.main.url(forResource: filename, withExtension: fileFormat) {
        videoPlayer = AVPlayer(url: videoURL)
        videoPlayer?.play()
    }
    return videoPlayer!
}
