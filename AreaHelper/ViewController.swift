//
//  ViewController.swift
//  AreaHelper
//
//  Created by Davidson, Liam on 2019-10-16.
//  Copyright © 2019 Davidson, Liam. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    
    //Properties
    @IBOutlet weak var inputLength: UITextField!
    @IBOutlet weak var inputWidth: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        speak("Welcome to Area Helper!")
    }


    @IBAction func calculateArea(_ sender: Any) {
        
        //create a constant from text fields and make sure they are not null or empty
        guard let lengthValue = inputLength.text, lengthValue != "" else {
            speak("Invalid length. Try again.")
            return
        }
        
        guard let widthValue = inputWidth.text, widthValue != "" else {
            speak("Invalid width. Try again.")
            return
        }
        
        //turn constants from string to int
        guard let integerLength = Int(lengthValue) else {
            speak("Length must be a submitted as a number.")
            return
        }
        
        guard let integerWidth = Int(widthValue) else {
            speak("Width must be a submitted as a number.")
            return
        }
        
    }
    
    
    
    
}




// A function that will speak whatever message is provided
func speak(_ message: String) {
    
    //make an object named synthesizer which is an instance of the class AVSynthesizer
    let synthesizer = AVSpeechSynthesizer()
    
    //make an object named utterance, which is an instance of the class AVSpeechUtterance
    let utterance = AVSpeechUtterance(string: message)
    
    //say the message
    synthesizer.speak(utterance)
}

