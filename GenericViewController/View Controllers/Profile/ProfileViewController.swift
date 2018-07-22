//
//  ProfileViewController.swift
//  GenericViewController
//
//  Created by Will Townsend on 21/07/18.
//  Copyright © 2018 WTSNZ. All rights reserved.
//

import Foundation
import UIKit

class ProfileViewController: GenericViewController<ProfileView> {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.rootView.setProfileImage(image: UIImage(named: "mark"))
        
    }
    
}
