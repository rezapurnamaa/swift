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
    let baum = UIImage(named: "baum")
    var baumView: UIImageView? = nil
    let screenWidth = UIScreen.main.bounds.size.width
    var timer: TImer? 
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        baumView = UIImageView(image: baum)
        
        if let baume = baumView {
            view.addSubview(baume)
            let factor: CGFloat = 0.5
            var baumeWidth = baume.frame.width
            var baumeHeight = baume.frame.height
            baume.frame.origin.x = 50
            baume.frame.origin.y = 50
            
            baumeWidth *= factor
            baumeHeight *= factor
            baume.frame.size.width = baumeWidth
            baume.frame.size.height = baumeHeight         
        }
    }

    @IBAction func moveSlider(_ sender: UISlider) {
        
        let skiFahrerWidth = skiFahrer.frame.width
        let distance = screenWidth - skiFahrerWidth
        skiFahrer.center.x = CGFloat(sender.value) * distance + skiFahrerWidth/2
    }

    func moveBaume() {

        guard counter <= 100
        else {
            timer?.invalidate()
            return
        }
        if let baume = baumView {
            baume.frame.originy -= 10
        }
        counter += 1


    }

}

