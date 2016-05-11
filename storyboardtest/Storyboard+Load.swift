//
//  Storyboard+Load.swift
//  storyboardtest
//
//  Created by Ayakix on 2016/05/10.
//  Copyright © 2016年 Ayakix All rights reserved.
//

import UIKit

protocol StoryboardLoadable {
    static var storyboardIdentifier:String { get }
    static var storyboardName:String { get }
}

extension StoryboardLoadable {
    static var storyboardIdentifier:String { return String(self) }
}

extension UIStoryboard {
    static func instantiateViewController<T:UIViewController where T:StoryboardLoadable>() -> T {
        guard let viewController = UIStoryboard(name: T.storyboardName, bundle: nil).instantiateViewControllerWithIdentifier(T.storyboardIdentifier) as? T else {
            fatalError("Cannot load storyboard")
        }
        
        return viewController
    }
}