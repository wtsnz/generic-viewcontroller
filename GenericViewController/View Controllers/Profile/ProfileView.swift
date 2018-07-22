//
//  ProfileView.swift
//  GenericViewController
//
//  Created by Will Townsend on 21/07/18.
//  Copyright © 2018 WTSNZ. All rights reserved.
//

import Foundation
import UIKit

class ProfileView: UIView, RootView {
    
    private lazy var profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    // MARK: - Initializers
    
    init() {
        super.init(frame: CGRect.zero)
        self.addSubview(self.profileImageView)
    }
    
    @available(*, unavailable)
    required public init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupAutoLayoutContraints(_ parentViewController: UIViewController?) {
        
        guard let parentViewController = parentViewController else {
            fatalError("Expected a view controller here.")
        }
        
        if #available(iOS 11.0, *) {
            self.profileImageView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        } else {
            self.profileImageView.topAnchor.constraint(equalTo: parentViewController.topLayoutGuide.bottomAnchor, constant: 20).isActive = true
        }
        
        self.profileImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        self.profileImageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        self.profileImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
    }
    
    // MARK: - Functions
    
    func setProfileImage(image: UIImage?) {
        self.profileImageView.image = image
    }
}

