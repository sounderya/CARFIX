//
//  CaseUpdateController.swift
//  CarFix
//
//  Created by Kumar Sambhav on 3/2/16.
//  Copyright © 2016 CarFix. All rights reserved.
//

import Foundation
import UIKit

class CaseUdpateController: UIViewController {
    
    @IBOutlet weak var caseNumber:UITextField!
    @IBOutlet weak var towTruck:UITextField!
    @IBOutlet weak var driverName:UITextField!
    @IBOutlet weak var eta:UITextField!
    @IBOutlet weak var breakDownlocation:UITextField!
    @IBOutlet weak var caseStatus:UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        caseNumber.text!="CX12345";
        towTruck.text!="SG1452"
        driverName.text!="John"
        eta.text!="11 minutes"
        
        
        get_data_from_url("https://203.223.133.13/Carfix/MobileAPIGet/PhoneRegisteration");
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    func get_data_from_url(url:String)
    {
        
        let url = NSURL(string: "https://www.gmail.com")
        let request = NSURLRequest(URL: url!)
        let connection = NSURLConnection(request: request, delegate:nil, startImmediately: true)
        print(connection)
        
    }
    
    
    
    
    
    
    
    
    
}