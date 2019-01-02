//
//  ViewController.swift
//  Digital Clock1
//
//  Created by david kim on 1/1/19.
//  Copyright © 2019 david kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var label: UILabel!
    
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
        self.updateTimer()
    }

    @objc func updateTimer() {
        let timeFormatter = DateFormatter()
    
        timeFormatter.timeStyle = .medium
        
        label.text = timeFormatter.string(from: NSDate() as Date)
    
    
    
    }
    
    

}

