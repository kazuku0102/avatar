//
//  ViewController.swift
//  avatar
//
//  Created by 蕭聿莘 on 2020/3/19.
//  Copyright © 2020 Kazuku. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bodyImageView: UIImageView!
    @IBOutlet weak var headImageView: UIImageView!
    @IBOutlet weak var faceImageView: UIImageView!
    @IBOutlet weak var glassessImageView: UIImageView!
    @IBOutlet weak var maskImageView: UIImageView!
    
    @IBOutlet var containerViews: [UIView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        containerViews[0].isHidden = false
        containerViews[1].isHidden = true
        containerViews[2].isHidden = true
        containerViews[3].isHidden = true
    }
    
    
    @IBAction func choose(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
            containerViews[0].isHidden = false
            containerViews[1].isHidden = true
            containerViews[2].isHidden = true
            containerViews[3].isHidden = true
        }else if sender.selectedSegmentIndex == 1{
            containerViews[0].isHidden = true
            containerViews[1].isHidden = false
            containerViews[2].isHidden = true
            containerViews[3].isHidden = true
        }else if sender.selectedSegmentIndex == 2{
            containerViews[0].isHidden = true
            containerViews[1].isHidden = true
            containerViews[2].isHidden = false
            containerViews[3].isHidden = true
        }else{
            containerViews[0].isHidden = true
            containerViews[1].isHidden = true
            containerViews[2].isHidden = true
            containerViews[3].isHidden = false
        }
    }
    
    @IBAction func wearSwitch(_ sender: UISwitch) {
        if sender.isOn == true {
            maskImageView.image = UIImage(named: "noMask")
        } else {
            maskImageView.image = UIImage(named: "a1")
        }
    }
    
    @IBAction func galssessClear(_ sender: UISwitch) {
        if sender.isOn == true {
            glassessImageView.isHidden = false
        }else{
            glassessImageView.isHidden = true
    }
    
}
    
}
