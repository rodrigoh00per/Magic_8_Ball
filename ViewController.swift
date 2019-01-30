//
//  ViewController.swift
//  S6_Magic_8_Ball
//
//  Created by Rodrigo Guerrero Rocha on 1/30/19.
//  Copyright © 2019 Rodrigo Guerrero Rocha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var balls : [String] = ["ball1","ball2","ball3","ball4","ball5"];
     var randomNumber:Int = 0 ;
  
    @IBOutlet weak var ImageView1: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        genNumRandom();
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func gimeAnAnswerBtn(_ sender: Any) {
        
        genNumRandom();
    }
    
   override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
    genNumRandom();
    }
    
    func genNumRandom() {
       
        randomNumber = Int.random(in: 0 ... 4);
       ImageView1.image = UIImage(named:balls[randomNumber]);
    }
   
    
}

