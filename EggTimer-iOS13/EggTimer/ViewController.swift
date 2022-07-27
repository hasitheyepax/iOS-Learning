//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    var eggTimes = [
        "Soft": 5,
        "Medium": 7,
        "Hard": 12
    ]
    
    var remainingSeconds: Int = 0
    
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
        
        remainingSeconds = eggTimes[hardness!]!
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(countdownTimer), userInfo: nil, repeats: true)
        
    }
    
    @objc func countdownTimer() {
        if(remainingSeconds > 0) {
            print("\(remainingSeconds) seconds.")
            remainingSeconds -= 1
        } else {
            timer.invalidate()
            titleLabel.text = "Done!"
        }
    }

}
