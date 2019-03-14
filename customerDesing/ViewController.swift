//
//  ViewController.swift
//  customerDesing
//
//  Created by developer on 8/15/18.
//  Copyright © 2018 developer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let headerImage = UIImageView()
    let logoutButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
    
    override func viewWillAppear(_ animated: Bool) {
          self.decoration()
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        if UIDevice.current.orientation.isLandscape {
           self.decoration()
        } else {
      self.decoration()
        }
        
        
        
    }
    
    
    
    func decoration(){
        let screenSize: CGRect = UIScreen.main.bounds
        let myView = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 80))
        myView.layer.backgroundColor = UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0).cgColor
        self.view.addSubview(myView)
        self.headerImage.image = #imageLiteral(resourceName: "logo")
        self.headerImage.contentMode = .scaleAspectFit
        myView.addSubview(self.headerImage)
        
        logoutButton.setImage(#imageLiteral(resourceName: "logout"), for: .normal)
       // logoutButton.addTarget(self, action: #selector(self.logout(_ :)), for: .touchUpInside)
        myView.addSubview(logoutButton)
        
        //button constant
        logoutButton.translatesAutoresizingMaskIntoConstraints = false
        logoutButton.trailingAnchor.constraint(equalTo: myView.trailingAnchor, constant: -27.0).isActive = true
        logoutButton.widthAnchor.constraint(equalToConstant: 40.0)
        logoutButton.heightAnchor.constraint(equalToConstant: 40.0)
        logoutButton.bottomAnchor.constraint(equalTo: myView.bottomAnchor, constant: -27.0).isActive = true
        
        
        
        
        
        
        
        //images constant
        headerImage.translatesAutoresizingMaskIntoConstraints = false
        headerImage.leadingAnchor.constraint(equalTo: myView.leadingAnchor , constant: 20.0).isActive = true
        // appLogo.widthAnchor.constraint(equalToConstant: 450.0)
        headerImage.topAnchor.constraint(equalTo: myView.topAnchor, constant: 35.0).isActive = true
        headerImage.trailingAnchor.constraint(equalTo: myView.trailingAnchor, constant: -75.0 ).isActive = true
        headerImage.bottomAnchor.constraint(equalTo: myView.bottomAnchor, constant: -8.0).isActive = true
    }
    
    
    
    
}

