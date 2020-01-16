//
//  LabelAnimViewController.swift
//  LabelAnimation
//
//  Created by Satheesh Kumar on 15/01/20.
//

import UIKit

public class LabelAnimViewController: UIViewController {

    @IBOutlet weak public var animLabel: UILabel!
    override public func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    public func loadvcFromBundle() -> LabelAnimViewController? {
        
        let podBundle = Bundle(for: LabelAnimViewController.self)
        if let bundleURL = podBundle.url(forResource: "LabelAnimation", withExtension: "bundle") {
            
            if let bundle = Bundle(url: bundleURL) {
                
                let registerTenantSB = UIStoryboard(name: "LabelAnimation", bundle: bundle)
                let registerTenantSuccessVC = registerTenantSB.instantiateViewController(withIdentifier: "LabelAnimViewController") as! LabelAnimViewController

                return registerTenantSuccessVC
            }else {
                
                assertionFailure("Could not load the bundle")
                
            }
            
        }else {
            
            assertionFailure("Could not create a path to the bundle")
            
        }
        return nil
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
