//
//  ViewController.swift
//  PulsatingMagnifierView
//
//  Created by Sophie Clark on 08/06/2018.
//  Copyright © 2018 Sophie Clark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var pulsatingMagnifierView: PulsatingMagnifierView!
    override func viewDidLoad() {
        super.viewDidLoad()
        pulsatingMagnifierView = PulsatingMagnifierView(frame: CGRect(x: view.frame.size.width / 2 - 50, y: view.frame.size.height / 2 - 100, width: 100, height: 100), viewToMagnify: view, repeatCount: .infinity, startValue: 1, endValue: 2, duration: 2, scale: 1.5)
        pulsatingMagnifierView.size = 50
        view.addSubview(pulsatingMagnifierView)
    }


}

