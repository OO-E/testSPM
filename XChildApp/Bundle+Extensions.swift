//
//  Bundle+Extensions.swift
//  ChildApp
//
//  Created by m1 on 29.11.2023.
//

import Foundation
extension Bundle {
    
    static func bundle() -> Bundle {
        
        let candidates = [
            // Bundle should be present here when the package is linked into an App.
            Bundle.main.resourceURL,
            
            // Bundle should be present here when the package is linked into a framework.
            Bundle(for: ViewController.self).resourceURL,
        ]
        
        let bundleName = "ChildApp_ChildApp"
        
        for candidate in candidates {
            let bundlePath = candidate?.appendingPathComponent(bundleName + ".bundle")
            if let bundle = bundlePath.flatMap(Bundle.init(url:)) {
                return bundle
            }
        }
        
        // Return whatever bundle this code is in as a last resort.
        return Bundle(for: ViewController.self)
    }
}
