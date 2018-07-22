//
//  GenericViewController.swift
//  GenericViewController
//
//  Created by Will Townsend on 21/07/18.
//  Copyright © 2018 WTSNZ. All rights reserved.
//

import Foundation
import UIKit

public protocol AutoLayoutView {
    func setupAutoLayoutContraints(_ parentViewController: UIViewController?)
}

/// A protocol for views that will be contained in a GenericViewController
public protocol RootView: AutoLayoutView { }
extension RootView {
    func setupAutoLayoutContraints(_ parentViewController: UIViewController?) { }
}

open class GenericViewController<V: RootView>: UIViewController where V: UIView {
    
    public var rootView: V! { return (self.view as! V) }
    
    override open func loadView() {
        self.view = V()
        self.rootView.setupAutoLayoutContraints(self)
    }

}
