//
//  AudioPlayer.swift
//  RestartApp
//
//  Created by Samed Semih Sürmeli on 7.02.2022.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(soundName: String, soundFileType: String){
    if let path = Bundle.main.path(forResource: soundName, ofType: soundFileType){
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        }catch{
            print("Cannot play the sound file.")
        }
    }
}
