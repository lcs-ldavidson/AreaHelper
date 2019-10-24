import UIKit
import AVFoundation

class CircleViewController: UIViewController {
    
    
    //Properties
    @IBOutlet weak var inputRadius: UITextField!
    @IBOutlet weak var circleAnswer: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        speak("Welcome to Area Helper!")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
    
    
    
    @IBAction func calculateCircleArea(_ sender: Any) {
    
    
        //create a constant from text fields and make sure they are not null or empty
        guard let radius = inputRadius.text, radius != "" else {
            speak("Invalid length. Try again.")
            return
        }
        
      
        
        //turn constants from string to int
        guard let doubleRadius = Double(radius) else {
            speak("Radius must be a submitted as a number.")
            return
        }
        
      
        
        let resultingArea = Double.pi * pow(doubleRadius, 2)
        circleAnswer.text = String(resultingArea)
        
    }
    
    
}
    





// A function that will speak whatever message is provided
func circleSpeak(_ message: String) {
    
    //make an object named synthesizer which is an instance of the class AVSynthesizer
    let synthesizer = AVSpeechSynthesizer()
    
    //make an object named utterance, which is an instance of the class AVSpeechUtterance
    let utterance = AVSpeechUtterance(string: message)
    
    //say the message
    synthesizer.speak(utterance)
}

