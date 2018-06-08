//
//  PulsatingMagnifierView.swift
//  PulsatingMagnifierView
//
//  Created by Sophie Clark on 08/06/2018.
//  Copyright © 2018 Sophie Clark. All rights reserved.
//

import UIKit
import QuartzCore

final class PulsatingMagnifierView: UIView {
    
    fileprivate var viewToMagnify: UIView?
    fileprivate var scale: CGFloat = 2.0
    fileprivate var repeatCount: Float = 5
    fileprivate var startValue: Double = 1
    fileprivate var endValue: Double = 1.5
    fileprivate var duration: CFTimeInterval = 1
    var size: CGFloat = 100.0 {
        didSet {
            let c = center
            frame = CGRect(x: c.x - size / 2, y: c.y - size / 2, width: size, height: size)
            layer.cornerRadius = size / 2
        }
    }
    var outlineColor: UIColor = .white {
        didSet {
            layer.borderColor = outlineColor.cgColor
        }
    }
    var outlineWidth: CGFloat = 2 {
        didSet {
            layer.borderWidth = outlineWidth
        }
    }
    
    init(frame: CGRect, viewToMagnify: UIView, repeatCount: Float = 5, startValue: Double = 1, endValue: Double = 1.5, duration: CFTimeInterval = 1, scale: CGFloat = 2) {
        super.init(frame: frame)
        layer.cornerRadius = size / 2
        layer.masksToBounds = true
        backgroundColor = .white
        layer.borderColor = outlineColor.cgColor
        layer.borderWidth = outlineWidth
        self.repeatCount = repeatCount
        self.startValue = startValue
        self.endValue = endValue
        self.duration = duration
        self.scale = scale
        self.viewToMagnify = viewToMagnify
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override open func draw(_ rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext()
            else { return }
        context.translateBy(x: frame.size.width / 2, y: frame.size.height / 2)
        context.scaleBy(x: scale, y: scale)
        context.translateBy(x: 1 - frame.midX, y: 1 - frame.midY)
        isHidden = true
        viewToMagnify?.layer.render(in: context)
        isHidden = false
        animate()
    }
    
    func animate() {
        let scaleAnimation = CABasicAnimation(keyPath: "transform.scale.xy")
        scaleAnimation.fromValue = startValue
        scaleAnimation.toValue = endValue
        scaleAnimation.duration = duration
        scaleAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        scaleAnimation.autoreverses = true
        scaleAnimation.repeatCount = repeatCount
        layer.add(scaleAnimation, forKey: "scale")
    }
}

