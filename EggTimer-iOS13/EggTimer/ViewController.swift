//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var eggTimes = [
        "Soft": 5,
        "Medium": 7,
        "Hard": 12
    ]
    
    var remainingSeconds: Int = 0
    var originalTime: Int = 0
    var player: AVAudioPlayer!
    
    var timer = Timer()
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        
        let hardness = sender.currentTitle
        
//        if (hardness == "Soft") {
//            print(softTime)
//        } else if (hardness == "Medium") {
//            print(mediumTime)
//        } else {
//            print(hardTime)
//        }
        
        titleLabel.text = hardness
        
        remainingSeconds = eggTimes[hardness!]!
        
        originalTime = remainingSeconds
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(countdownTimer), userInfo: nil, repeats: true)
        
    }
    
    @objc func countdownTimer() {
        if(remainingSeconds > 0) {
            remainingSeconds -= 1
            let progress = (Float(originalTime) - Float(remainingSeconds)) / Float(originalTime)
            print(progress)
            print("\(remainingSeconds) seconds.")
            progressBar.progress = progress
        } else {
            timer.invalidate()
            titleLabel.text = "Done!"
            playSound()
        }
    }
    
    func playSound(){
        let soundFileURL = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: soundFileURL!)
        player.play()
    }

}
