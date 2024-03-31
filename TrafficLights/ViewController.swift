//
//  ViewController.swift
//  TrafficLights
//
//  Created by Лидия Пятаева on 29.03.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var switchLightsButton: UIButton!
    var colors: Colors = .red
    var isButtonOn = false
    let lightOn = 1.0
    let lightOff = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.layer.cornerRadius = 50
        yellowLight.layer.cornerRadius = 50
        greenLight.layer.cornerRadius = 50
        switchLightsButton.layer.cornerRadius = 15
    }
    
    @IBAction func switchLightsColors(_ sender: UIButton) {
        isButtonOn = true
        if isButtonOn {
            sender.setTitle("Next", for: .normal)
            switch colors {
            case .red:
                redLight.alpha = lightOn
                greenLight.alpha = lightOff
                colors = .yellow
            case .yellow:
                yellowLight.alpha = lightOn
                redLight.alpha = lightOff
                colors = .green
            case .green:
                greenLight.alpha = lightOn
                yellowLight.alpha = lightOff
                colors = .red
            }
        }
      
    }
}
    
enum Colors {
    case red, yellow, green
}
    

