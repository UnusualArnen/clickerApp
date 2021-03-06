//
//  ViewController.swift
//  clickerGame
//
//  Created by Jack Roper on 7/22/16.
//  Copyright © 2016 Jack Roper. All rights reserved.
//

import UIKit
var balance : Double = 0;
var calPerSecond : Int = 0;
class ViewController: UIViewController {

    @IBOutlet weak var calPerSecondLabel: UILabel!
    @IBOutlet weak var balanceLabel: UILabel!
    @IBOutlet weak var clickerButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        let timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("updateBalanceLabel"), userInfo: nil, repeats: true)
        
        

    }
    func nextImage() -> String{
        let imageNames : [String] = ["cookie", "hotdog", "hamburger", "icecream", "pizza"]
        let randomIndex = Int(arc4random_uniform(UInt32(imageNames.count)));
        return imageNames[randomIndex];
    }
    @IBAction func onTap(sender: AnyObject) {
        clickerButton.setImage(UIImage(named: self.nextImage()),forState: UIControlState.Normal);
        balance += 1;
    }
    func updateBalanceLabel(){
        calPerSecondLabel.text = String(calPerSecond);
        balance += (Double(calPerSecond)/10)
        balanceLabel.text = String(round(balance));
    }
}

