//
//  ViewController.swift
//  AreaHelper
//
//  Created by Davidson, Liam on 2019-10-16.
//  Copyright © 2019 Davidson, Liam. All rights reserved.
//

import UIKit
import AVFoundation

class CubeViewController: UIViewController {
    
    
    //Properties
    @IBOutlet weak var inputCubeLength: UITextField!
    @IBOutlet weak var inputCubeWidth: UITextField!
    @IBOutlet weak var inputCubeHeight: UITextField!
    @IBOutlet weak var cubeAnswer: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        speak("Welcome to Area Helper!")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
    
    @IBAction func calculateCubeSurfaceArea(_ sender: Any) {
        
        //make string values with the given inputs
        guard let lengthString = inputCubeLength.text, lengthString != "" else {
            speak("Please enter a length value.")
            return
        }
        
        guard let widthString = inputCubeWidth.text, widthString != "" else {
            speak("Please enter a width value.")
            return
        }
        
        guard let heightString = inputCubeHeight.text, heightString != "" else {
            speak("Please enter a height value.")
            return
        }
        
        //make integer values with string values
        guard let lengthInteger = Int(lengthString) else {
            speak("Please enter a valid length.")
            return
        }
        
        guard let widthInteger = Int(widthString) else {
            speak("Please enter a valid width.")
            return
        }
        
        guard let heightInteger = Int(heightString) else {
            speak("Please enter a valid height.")
            return
        }
        
        let surfaceArea = (2 * lengthInteger * widthInteger) + (2 * lengthInteger * heightInteger) + (2 * widthInteger * heightInteger)
        cubeAnswer.text = String(surfaceArea)
        
    }
    
}



