//
//  AppDelegate.swift
//  Youtube
//
//  Created by mohamed sayed on 12/6/20.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        
        let layout = UICollectionViewFlowLayout()
        window?.rootViewController  = UINavigationController(rootViewController:HomeVC(collectionViewLayout: layout))
        UINavigationBar.appearance().barTintColor = .red
    
        let statusBarView = UIView()
        statusBarView.translatesAutoresizingMaskIntoConstraints = false
        statusBarView.backgroundColor = UIColor(red: 194/255, green: 31/255, blue: 31/255, alpha: 1)
        
        window?.addSubview(statusBarView)
    
        window?.addConstraint(
            statusBarView.topAnchor.constraint(equalTo: window!.topAnchor, constant: 0)
        )
        
        window?.addConstraint(
            statusBarView.leadingAnchor.constraint(equalTo: window!.leadingAnchor, constant: 0)
        )
        
        window?.addConstraint(
            statusBarView.trailingAnchor.constraint(equalTo: window!.trailingAnchor, constant: 0)
        )
        
        window?.addConstraint(
            statusBarView.heightAnchor.constraint(equalToConstant: 20)
        )
        
        return true
    }

}
