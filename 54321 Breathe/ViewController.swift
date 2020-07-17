//
//  ViewController.swift
//  54321 Breathe
//
//  Created by Paul Barnes on 16/07/2020.
//  Copyright © 2020 Paul Barnes. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // read out the intro
        let synth = AVSpeechSynthesizer()
        let intro = AVSpeechUtterance(string: "Welcome to 5,4,3,2,1 and Breathe. A simple exercise you do when you are feeling anxious or tense.    Please press start to begin.")
        intro.rate = 0.4
        intro.voice = AVSpeechSynthesisVoice(language: "en-IE")
        synth.speak(intro)
    }


}

