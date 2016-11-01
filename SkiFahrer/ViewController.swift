//
//  ViewController.swift
//  SkiFahrer
//
//  Created by  on 01/11/16.
//  Copyright © 2016 reza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var skiFahrer: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func moveSlider(_ sender: UISlider) {
        
        let screenWidth = UIScreen.main.bounds.size.width
        let skiFahrerWidth = skiFahrer.frame.width
        let distance = screenWidth - skiFahrerWidth
        skiFahrer.center.x = CGFloat(sender.value) * distance + skiFahrerWidth/2
    }

}

