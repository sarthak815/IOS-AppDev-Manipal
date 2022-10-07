//
//  ViewController.swift
//  Controls in Action
//
//  Created by Sarthak Shastri on 07/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
        @IBOutlet weak var toggle: UISwitch!
        @IBOutlet weak var slider: UISlider!
        
        @IBOutlet weak var myLabel: UITextField!
    override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
            button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        }

        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }

        @IBAction func buttonTapped(_ sender: UIButton) {
            myLabel.text = "Button was tapped"
            
            if toggle.isOn {
                myLabel.text = "The switch is on!"
            } else {
                myLabel.text = "The switch is off."
            }
            
            myLabel.text = String(slider.value)
        }
        
        @IBAction func switchToggled(_ sender: UISwitch) {
            if sender.isOn {
                myLabel.text = "Switch is on!"
            } else {
                myLabel.text = "Switch is off."
            }
        }
        @IBAction func sliderValueChanged(_ sender: UISlider) {
            myLabel.text = String(sender.value)
        }
        
        @IBAction func keyboardReturnKeyTapped(_ sender: UITextField) {
            if let text = sender.text {
                print(text)
            }
        }
        
        @IBAction func textChanged(_ sender: UITextField) {
            if let text = sender.text {
                print(text)
            }
        }
        
        @IBAction func respondToTapGesture(_ sender: UITapGestureRecognizer) {
            let location = sender.location(in: view)
            print(location)
        }


}

