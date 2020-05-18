//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
      let label = (sender.titleLabel?.text!)!
      playSound(soundLabel: label) // (sender.currentTitle!)
//      reduce sender opacity to half
      sender.alpha = 0.5
      print("Start")
      
//      DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {} execute with delay 0.2
          UIView.animate(withDuration: 0.2) {
              sender.alpha = 1.0
              print("End")
          }

    }

  func playSound(soundLabel: String) {
        let url = Bundle.main.url(forResource: soundLabel, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}
