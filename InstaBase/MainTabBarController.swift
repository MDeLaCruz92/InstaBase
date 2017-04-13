//
//  MainTabBarController.swift
//  InstaBase
//
//  Created by Michael De La Cruz on 4/11/17.
//  Copyright © 2017 Michael De La Cruz. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .blue
    
    let layout = UICollectionViewFlowLayout()
    
    let userProfileController = UserProfileController(collectionViewLayout: layout)
    
    let navController = UINavigationController(rootViewController: userProfileController)
    
    navController.tabBarItem.image = #imageLiteral(resourceName: "profile_unselected")
    navController.tabBarItem.selectedImage = #imageLiteral(resourceName: "profile_selected")
    
    tabBar.tintColor = .black
    
    viewControllers = [navController, UIViewController()]
    
  }
}
