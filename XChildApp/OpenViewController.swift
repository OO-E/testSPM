//
//  OpenViewController.swift
//  ChildApp
//
//  Created by m1 on 29.11.2023.
//

import Foundation
import UIKit


class OpenViewController : UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Calculated.info()
    }
    
    static func getBundle() -> Bundle? {
        
        let bundleSPM = Bundle.bundle()
        return bundleSPM
    }
}
