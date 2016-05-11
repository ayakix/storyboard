//
//  UINib+Load.swift
//  storyboardtest
//
//  Created by Ayakix on 2016/05/10.
//  Copyright © 2016年 Ayakix All rights reserved.
//

import UIKit

extension UIView {
    private var className: String {
        let className = String(self.dynamicType)
        let components = className.characters.split{$0 == "."}.map ( String.init )
        return components.last!
    }
    
    func instantiateView() -> UIView {
        let bundle = NSBundle(forClass: self.dynamicType)
        
        let nib = UINib(nibName: className, bundle: bundle)
        guard let view = nib.instantiateWithOwner(self, options: nil).first as? UIView else {
            fatalError("Cannot load nib")
        }
        
        view.frame = self.bounds
        view.translatesAutoresizingMaskIntoConstraints = true
        view.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleHeight]
        
        addSubview(view)
        return view
    }
}
