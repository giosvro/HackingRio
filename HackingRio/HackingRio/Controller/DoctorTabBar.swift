//
//  DoctorTabBar.swift
//  HackingRio
//
//  Created by Julia Maria Santos on 29/07/2018.
//  Copyright © 2018 Giovanni Severo Barros. All rights reserved.
//

import UIKit

class DoctorTabBar: UITabBarController, UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //MARK:- Create Tab Search
        let searchTab = SearchTabViewController()
        let searchTabItem = UITabBarItem(title: "Buscar", image: UIImage(named: "searchActive"), selectedImage: UIImage(named: "searchInactive"))
        
        searchTab.tabBarItem = searchTabItem
        
        //MARK:- Create Tab Schedule
        let scheduleTab = DoctorScheduleVC()
        let scheduleTabItem = UITabBarItem(title: "Agenda", image: UIImage(named: "calendarActive"), selectedImage: UIImage(named: "scheduleInactive"))
        
        scheduleTab.tabBarItem = scheduleTabItem
        
        //MARK:- Create Tab Favorites
        let favoriteTab = UIViewController()
        let favoriteTabItem = UITabBarItem(title: "Favorito", image: UIImage(named: "favoriteActive"), selectedImage: UIImage(named: "favoriteInactive"))
        
        favoriteTab.tabBarItem = favoriteTabItem
        
        let controllers = [searchTab, scheduleTab, favoriteTab]
        
        self.viewControllers = controllers
        self.viewControllers = controllers.map {UINavigationController(rootViewController: $0)}
    }
}
