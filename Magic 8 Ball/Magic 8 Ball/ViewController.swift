//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Zaki Zughbi on 10/2/19.
//  Copyright © 2019 Zaki Zughbi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballImageView1: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func change(){
        let num = Int.random(in: 1...5)
        ballImageView1.image = UIImage(named: "ball\(num)")
    }
    
    
    @IBAction func askbutton(_ sender: Any) {
        change()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        change()
    }
    
}

