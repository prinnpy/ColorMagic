//
//  ColorPickerVC.swift
//  ColorMagic
//
//  Created by Prinn Prinyanut on 5/18/18.
//  Copyright © 2018 Prinn Prinyanut. All rights reserved.
//

import UIKit

class ColorPickerVC: UIViewController {
    
    var delegate : ColorTransferDelegate? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func colorBtnWasPressed(sender: UIButton) {
        if delegate != nil {
            delegate?.userDidChoose(color: sender.backgroundColor!, withName: (sender.titleLabel?.text!)!)
            self.navigationController?.popViewController(animated: true)
        }
    }


}
