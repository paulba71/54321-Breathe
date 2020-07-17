//
//  InstructionsViewController.swift
//  54321 Breathe
//
//  Created by Paul Barnes on 17/07/2020.
//  Copyright © 2020 Paul Barnes. All rights reserved.
//

import UIKit
import AVFoundation

class InstructionsViewController: UIViewController {

    let synth = AVSpeechSynthesizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        speakPart(textLine: "Try to think of a place that makes you happy.")
        sleep(4)
        speakPart(textLine: "Somewhere that you can feel safe and calm.")
        sleep(4)
        speakPart(textLine: "It can be real or imagined but try to think of it in as much detail as you can.")
    }
    
    func speakPart(textLine: String){
        narrative.text?.removeAll()
        narrative.text = textLine
        let instruction = AVSpeechUtterance(string: textLine)
        instruction.rate = 0.4
        instruction.voice = AVSpeechSynthesisVoice(language: "en-IE")
        synth.speak(instruction)
        while(synth.isSpeaking){
            
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        synth.pauseSpeaking(at: .immediate)
    }
    
    @IBOutlet weak var narrative: UILabel!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
