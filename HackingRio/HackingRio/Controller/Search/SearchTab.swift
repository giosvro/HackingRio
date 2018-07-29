//
//  SearchTab.swift
//  HackingRio
//
//  Created by Giovanni Severo Barros on 28/07/18.
//  Copyright © 2018 Giovanni Severo Barros. All rights reserved.
//

import UIKit

class SearchTabViewController: UIViewController {

    var searchTabView: UIView = {
        let screenSize: CGRect = UIScreen.main.bounds
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
        var view = UIView(frame: CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight))
        view.backgroundColor = .white
//        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    var searchBar: UIView = {
        var view = UIView(frame: CGRect(x: 0, y: 0, width: 343, height: 36))
        view.layer.cornerRadius = 5
        view.layer.masksToBounds = true
        view.backgroundColor = .gray
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
        }()
    
    var imageViewSearch: UIImageView = {
       var image = UIImageView(frame: CGRect(x: 0, y: 0, width: 188, height: 188))
        image.image = UIImage(named: "searchTab")
        image.translatesAutoresizingMaskIntoConstraints = false

        return image
    }()
    
    var labelViewSearch: UILabel = {
       var label = UILabel()
        label.text = "Você pode pesquisar por tags como locais, nome, CRM e mais"
        label.numberOfLines = 2
        return label
    }()
    
    override func viewDidLoad() {
        
        
//        searchTabView.addSubview(searchBar)
        self.view.addSubview(searchTabView)
        searchTabView.addSubview(searchBar)
        searchTabView.addSubview(imageViewSearch)
        
        self.navigationItem.titleView = searchBar
        
        searchBar.topAnchor.constraint(equalTo: self.searchTabView.topAnchor, constant: 35).isActive = true
        searchBar.leftAnchor.constraint(equalTo: self.searchTabView.leftAnchor, constant: 0).isActive = true
        searchBar.rightAnchor.constraint(equalTo: self.searchTabView.rightAnchor, constant: 0).isActive = true
        searchBar.heightAnchor.constraint(equalToConstant: 36).isActive = true
                
        imageViewSearch.centerXAnchor.constraint(equalTo: self.searchTabView.centerXAnchor).isActive = true
        imageViewSearch.centerYAnchor.constraint(equalTo: self.searchTabView.centerYAnchor).isActive = true
        imageViewSearch.heightAnchor.constraint(equalToConstant: 188).isActive = true
        imageViewSearch.widthAnchor.constraint(equalToConstant: 188).isActive = true



        
    }
    
}
