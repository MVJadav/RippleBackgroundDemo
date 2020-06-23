//
//  ViewController.swift
//  RippleBackground
//
//  Created by Mehul Jadav.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var baseView: UIView!
    var rippleView: SMRippleView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        baseView.layer.cornerRadius = baseView.frame.size.width/2
        baseView.clipsToBounds = true
        baseView.backgroundColor = .red
        
        let fillColor = UIColor.red
        let rippleView = SMRippleView(frame: baseView.frame, rippleColor: UIColor.white, rippleThickness: 0.2, rippleTimer: 0.6, fillColor: fillColor, animationDuration: 4, parentFrame: self.view.frame)
        rippleView.backgroundColor = .white
        self.view.addSubview(rippleView)
 
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        //rippleView?.center = self.baseView.center
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

