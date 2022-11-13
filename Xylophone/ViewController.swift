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

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var player: AVAudioPlayer!
    
    @IBAction func keyPressed(_ sender: UIButton) {
        sender.alpha = 0.2

          //Code should execute after 0.2 second delay.
          DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
              //Bring's sender's opacity back up to fully opaque.
              sender.alpha = 1.0
          }
        playSound(name: sender.currentTitle!)
    }
    
    func playSound(name: String) {
                let url = Bundle.main.url(forResource: name, withExtension: "wav")
                player = try! AVAudioPlayer(contentsOf: url!)
                player.play()
                        
            }
    

}
