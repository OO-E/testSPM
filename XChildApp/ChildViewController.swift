//
//  ViewController.swift
//  ChildApp
//
//  Created by m1 on 28.11.2023.
//

import UIKit


class ChildViewController: UIViewController {

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
