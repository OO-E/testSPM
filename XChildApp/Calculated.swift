//
//  Calculate.swift
//  ChildApp
//
//  Created by m1 on 29.11.2023.
//

import Foundation
import UIKit

public struct Calculated {
    // Customize your command's help and subcommands by implementing the
    // `configuration` property.
    static var configuration = CalculatedConfiguration(
        // Optional abstracts and discussions are used for help output.
        abstract: "A utility for performing maths.",

        // Commands can define a version for automatic '--version' support.
        version: "1.0.0"
        )

  public  static func info(){
        print("\(configuration.abstract) - \(configuration.version)" )
    }
    
    public static func openScreen(controller: UIViewController){

        let viewController = OpenViewController.createFromStoryboard()
        let navigation = UINavigationController(rootViewController: viewController)
        navigation.modalPresentationStyle = .fullScreen
        controller.present(navigation, animated: true, completion: nil)
        
    }
}

struct CalculatedConfiguration{
    var abstract : String
    var version : String
}
