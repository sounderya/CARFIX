//
//  LoadingViewController.swift
//  CarFixUI
//
//  Created by Sounderya Ramesh Babu on 19/1/16.
//  Copyright © 2016 CarFix. All rights reserved.
//
//
//  ViewController.swift
//  CarFixUI
//
//  Created by Sounderya Ramesh Babu on 19/1/16.
//  Copyright © 2016 CarFix. All rights reserved.
//

import Foundation
import UIKit


class LoadingViewController: UIViewController {
    @IBOutlet weak var progressView: UIProgressView!
    var time : Float = 0.0
    var timer: NSTimer?

  
    override func viewDidLoad() {
        super.viewDidLoad()
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector:Selector("setProgress"), userInfo: nil, repeats: true)
        //self.performSegueWithIdentifier("goNext", sender: self)
        
        
    }//close viewDidLoad
    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
//        if segue.identifier == "goNext"{
//            segue.destinationViewController as! PrivacyScreenController
//            
//        }
//    }
    func setProgress() {
        time += 0.1
        progressView.progress = time / 3
        if time >= 3 {
            timer!.invalidate()
            self.performSegueWithIdentifier("goNext", sender: self)
        }
        //self.performSegueWithIdentifier("goNext", sender: self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

