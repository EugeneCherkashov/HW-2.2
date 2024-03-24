//
//  ViewController.swift
//  HW 2.2
//
//  Created by Евгений on 23.03.2024.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var button: UIButton!
    
    private var light = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.layer.cornerRadius = 10
        
        redLight.layer.cornerRadius = 50
        yellowLight.layer.cornerRadius = 50
        greenLight.layer.cornerRadius = 50
        
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        
    }

    @IBAction func butonPressed() {
        
        if button.currentTitle == "Включить" {
            button.setTitle("Следующий", for: .normal)
        }
        
        if light == 1 {
            greenLight.alpha = 0.3
            redLight.alpha = 1
            light = 2
        } else if light == 2 {
            redLight.alpha = 0.3
            yellowLight.alpha = 1
            light = 3
        } else if light == 3 {
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
            light = 1
        }
    }
}

