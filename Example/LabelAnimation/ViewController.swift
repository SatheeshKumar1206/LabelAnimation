//
//  ViewController.swift
//  LabelAnimation
//
//  Created by satheeshkumar1206 on 01/15/2020.
//  Copyright (c) 2020 satheeshkumar1206. All rights reserved.
//

import UIKit
import LabelAnimation

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        //let amin = AnimLabel(
        //NSBundle* bun = [NSBundle bundleWithIdentifier:"id"]
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    static var bundle:Bundle {
        let podBundle = Bundle(for: LabelAnimViewController.self)
        
        let bundleURL = podBundle.url(forResource: "MyFramework", withExtension: "bundle")
        return Bundle(url: bundleURL!)!
    }

    @IBAction func buttonAction(_ sender: Any) {
        //let bun = Bundle(identifier: "org.cocoapods.LabelAnimation")
        
                let podBundle = Bundle(for: LabelAnimViewController.self)

                let bundleURL = podBundle.url(forResource: "LabelAnimation", withExtension: "bundle")
              let bun =  Bundle(url: bundleURL!)!
        
        let registerTenantSB = UIStoryboard(name: "LabelAnimation", bundle: bun)
        let registerTenantSuccessVC = registerTenantSB.instantiateViewController(withIdentifier: "LabelAnimViewController") as! LabelAnimViewController
        present(registerTenantSuccessVC, animated:true) {
            registerTenantSuccessVC.animLabel.startBlinking()
        }
        
//        let anim = LabelAnimViewController.init()
//
//        let vc = anim.loadvcFromBundle()!
//
//        present(vc, animated:true) {
//            vc.animLabel.startBlinking()
//                    }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

