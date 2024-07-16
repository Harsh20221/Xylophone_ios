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
    
    func playSoundC() {  /////PLAYSOUND FOR C
    let path = Bundle.main.url(forResource: "C", withExtension:"wav") //This is the updated Player the first line is locating the sound the 2 line is inserting the file into the player and 3 line is actually responsible for playing the sound
            player = try!AVAudioPlayer(contentsOf: path!)
            player?.play()
    }
    
    
    
    
    
    
    @IBAction func FirstButtonController_C(_ sender: UIButton) { //C-BUTTON

        ////Write your Code here for The Action you wanna perform with this Button
        playSoundC() //? To add the sound folder in X code , Just Drag and drop the folder in X code , do not use Finder to copy paste   This will play C sound
    }
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    


    

}

