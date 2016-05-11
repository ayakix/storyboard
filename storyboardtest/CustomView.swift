//
//  CustomView.swift
//  storyboardtest
//
//  Created by Ayakix on 2016/05/10.
//  Copyright © 2016年 Ayakix All rights reserved.
//

import UIKit

@IBDesignable
class CustomView: UIView {
    @IBOutlet weak var label: UILabel!
    
    @IBInspectable var titleText: String = "" {
        didSet {
            label.text = titleText
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        let view = instantiateView()
        
        // Visual Format Languageを使って、Layoutを変更する場合
//        view.translatesAutoresizingMaskIntoConstraints = false
//        let bindings = ["view": view]
//        let metrics = ["wide": 50, "p": 8]
//        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-(wide)-[view]-(p)-|", options:NSLayoutFormatOptions(rawValue: 0), metrics:metrics, views: bindings))
//        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|[view]|", options:NSLayoutFormatOptions(rawValue: 0), metrics:nil, views: bindings))
    }

}
