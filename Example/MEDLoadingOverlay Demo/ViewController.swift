//
//  ViewController.swift
//  MEDLoadingOverlay Demo
//
//  Created by Eli Lien on 3/8/18.
//  Copyright © 2018 CODEBIT INC. All rights reserved.
//

import UIKit
import MEDLoadingOverlay

class ViewController: UIViewController {

    @IBAction func showLoadingOverlay(_ sender: UIButton) {
        
        // Show Loading Overlay
        MEDLoadingOverlay.shared.showOverlay(inView: (self.navigationController?.view)!, withColor: .gray)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 6.0) {
            // Hide Loading Overlay
            MEDLoadingOverlay.shared.hideOverlayView()
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

