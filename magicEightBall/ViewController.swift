//
//  ViewController.swift
//  magicEightBall
//
//  Created by West Kraemer on 2/21/19.
//  Copyright © 2019 West Kraemer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallIndex = 0
    
    @IBOutlet weak var eightBallImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateBall()
        
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateBall()
    }
    @IBAction func ballButtonPressed(_ sender: UIButton) {
        updateBall()
    }
    
    
    func updateBall() {
        randomBallIndex = Int.random(in: 0 ... 4)
        print(randomBallIndex)
        eightBallImage.image = UIImage(named: ballArray[randomBallIndex])
    }
}

