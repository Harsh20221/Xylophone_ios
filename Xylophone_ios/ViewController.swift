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
    
    func playSound(soundname:String ) {  /////PLAYSOUND
    let path = Bundle.main.url(forResource: soundname, withExtension:"wav") //This is the updated Player the first line is locating the sound the 2 line is inserting the file into the player and 3 line is actually responsible for playing the sound
        ///!! Make sure to also specify the soundname parameter here in this path variable
            player = try!AVAudioPlayer(contentsOf: path!)
            player?.play()
    }
    
    
    
    
    
    
    @IBAction func FirstButtonController_C(_ sender: UIButton) { //C-BUTTON

        ////Write your Code here for The Action you wanna perform with this Button
        playSound(soundname:sender.currentTitle! ) //? To add the sound folder in X code , Just Drag and drop the folder in X code , do not use Finder to copy paste   This will play C sound
        ///!! Do not forget to add ! after CurrentTitle
                print(sender.currentTitle!)//? Use this current title to get the title of the Button Pressed
        sender.alpha=0.5;
        let seconds = 0.2  ///?The Below code will change the opacity of the button back to original after 0.2 seconds
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            sender.alpha=1;
        }
    
    }
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    


    

}

