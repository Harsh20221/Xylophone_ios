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
    var player : AVAudioPlayer? // This is how we assign a Audio player for AV 
    
    func playSound() {
        guard let path = Bundle.main.path(forResource: "C", ofType:"wav") else {
            return }
        let url = URL(fileURLWithPath: path)

        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    @IBAction func FirstButtonController_C(_ sender: UIButton) {

        ////Write your Code here for The Action you wanna perform with this Button
        playSound()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    


    

}

