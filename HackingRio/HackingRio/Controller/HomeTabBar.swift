//
//  HomeTabBar.swift
//  HackingRio
//
//  Created by Giovanni Severo Barros on 28/07/18.
//  Copyright © 2018 Giovanni Severo Barros. All rights reserved.
//

import UIKit

class HomeTabBar: UITabBarController, UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //MARK:- Create Tab Search
        let searchTab = UIViewController()
        let searchTabItem = UITabBarItem(title: "Buscar", image: UIImage(named: "searchActive"), selectedImage: UIImage(named: "searchInactive"))
        
        searchTab.tabBarItem = searchTabItem
        
        //MARK:- Create Tab Schedule
        let scheduleTab = UIViewController()
        let scheduleTabItem = UITabBarItem(title: "Agenda", image: UIImage(named: "scheduleActive"), selectedImage: UIImage(named: "scheduleInactive"))
        
        scheduleTab.tabBarItem = scheduleTabItem
        
        //MARK:- Create Tab Favorites
        let favoriteTab = UIViewController()
//        let favoriteTabItem = UITabBarItem(title: "Favorito", image: UIImage(named: "), selectedImage: <#T##UIImage?#>)
        
    }
}
