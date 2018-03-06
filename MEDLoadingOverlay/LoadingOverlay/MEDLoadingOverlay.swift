//
//  MEDLoadingOverlay.swift
//  MEDLoadingOverlay
//
//  Created by Eli Lien on 3/5/18.
//  Copyright © 2018 CODEBIT INC. All rights reserved.
//

import UIKit

class MEDLoadingOverlay: UIView {

    static let shared = MEDLoadingOverlay()
    
    var overlayView = UIView()
    var activityIndicatorView = MEDActivityIndicatorView()
    var activityIndicatorBackView = UIVisualEffectView()
    
    private var circlePathLayer = CAShapeLayer()
    
    func showOverlay(inView view: UIView, withColor color: UIColor) {
        self.overlayView = UIView(frame: UIScreen.main.bounds)
        self.overlayView.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.5)
        let blurEffect = UIBlurEffect(style: .extraLight)
        self.activityIndicatorBackView = UIVisualEffectView(effect: blurEffect)
        self.activityIndicatorBackView.frame = CGRect(x: 0.0, y: 0.0, width: 60.0, height: 60.0)
        self.activityIndicatorBackView.layer.cornerRadius = 5.0
        self.activityIndicatorBackView.clipsToBounds = true
        self.activityIndicatorBackView.center = self.overlayView.center
        self.activityIndicatorBackView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.overlayView.addSubview(self.activityIndicatorBackView)
        
        self.activityIndicatorView.frame = CGRect(x: 0.0, y: 0.0, width: 40.0, height: 40.0)
        self.activityIndicatorView.lineWidth = 1.0
//        self.activityIndicatorView.color = UIColor(hexString: "#555765")!
        self.activityIndicatorView.color = color
        self.activityIndicatorView.backgroundColor = UIColor.clear
        self.activityIndicatorView.center = self.overlayView.center
        self.activityIndicatorView.startAnimating()
        self.overlayView.addSubview(self.activityIndicatorView)
        view.addSubview(self.overlayView)
    }
    
    func hideOverlayView() {
        self.activityIndicatorView.stopAnimating()
        self.overlayView.removeFromSuperview()
    }

}
