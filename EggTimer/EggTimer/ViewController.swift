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
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var progressView: UIProgressView!
    let eggTimes = ["Soft": 1, "Medium": 7, "Hard": 12]
    var timer = Timer()
    var toalTime = 0
    var secondsPassed = 0
    var player: AVAudioPlayer!

    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        timer.invalidate()
        toalTime = eggTimes[hardness]! * 60
        
        progressView.progress = 0.0
        secondsPassed = 0
        titleLbl.text = hardness
        
        timer  = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        if secondsPassed < toalTime {
            secondsPassed += 1
            progressView.progress = Float(secondsPassed) / Float(toalTime)
                        print(Float(secondsPassed) / Float(toalTime))
        } else {
            timer.invalidate()
            titleLbl.text = "DONE!"
            
            let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
                        player = try! AVAudioPlayer(contentsOf: url!)
                        player.play()
        }
    }
}
