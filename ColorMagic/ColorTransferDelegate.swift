//
//  ColorTransferDelegate.swift
//  ColorMagic
//
//  Created by Prinn Prinyanut on 5/18/18.
//  Copyright © 2018 Prinn Prinyanut. All rights reserved.
//

import UIKit
import Foundation

protocol ColorTransferDelegate {
    func userDidChoose(color : UIColor,withName colorName : String)
}
