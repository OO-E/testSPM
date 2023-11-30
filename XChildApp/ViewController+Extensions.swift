//
//  ViewController+Extensions.swift
//  ChildApp
//
//  Created by m1 on 29.11.2023.
//

import Foundation
import UIKit
extension UIViewController {
    func dismissBugFinder(animated: Bool, completion: (()->())?) {
        var count = 0
        if let c = self.navigationController?.viewControllers.count {
            count = c
        }
        if count > 1 {
            self.navigationController?.popViewController(animated: animated)
            if let handler = completion {
                handler()
            }
        } else {
            dismiss(animated: animated, completion: completion)
        }
    }
    @objc class var storyboardName: String {
        return String(describing: self)
    }
    
    @objc class func createFromStoryboard() -> Self {
        let vc = createFromStoryboard(named: storyboardName, type: self)
        if let vc = vc as? UIViewController {
            vc.modalPresentationStyle = .fullScreen
        }
        return vc
    }
    
    static func createFromStoryboard<T: UIViewController>(named storyboardName: String?, type: T.Type) -> T {
        
        
        let bundle: Bundle! = ViewController.getBundle()
    
        let vc = UIStoryboard(name: storyboardName ?? self.storyboardName, bundle: bundle).instantiateInitialViewController() as! T
        if let vc = vc as? UIViewController {
            vc.modalPresentationStyle = .fullScreen
        }
        return vc
    }
}
