//
//  ViewController.swift
//  ColorMagic
//
//  Created by Prinn Prinyanut on 5/18/18.
//  Copyright © 2018 Prinn Prinyanut. All rights reserved.
//

import UIKit

class ColorPresenterVC: UIViewController, ColorTransferDelegate {

    @IBOutlet weak var colorNameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func userDidChoose(color: UIColor, withName colorName: String) {
        view.backgroundColor = color
        colorNameLabel.text = colorName + "! Press + to change color!"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "presentColorPickerVC" {
            guard let colorPickerVC = segue.destination as? ColorPickerVC else { return }
            
            colorPickerVC.delegate = self
            
        }
        
    
        
    }



}

