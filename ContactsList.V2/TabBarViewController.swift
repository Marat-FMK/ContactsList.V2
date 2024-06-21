//
//  TabBarViewController.swift
//  ContactsList.V2
//
//  Created by Marat Fakhrizhanov on 21.06.2024.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupControllers()
    }
    
    private func setupControllers() {
        
        let persons = Person.getPerson()
        
        let contactsVC = viewControllers?.first as! ContactsTableTableViewController
        let shortInfoVC = viewControllers?.last as! ShortInfoTableViewController
        
        contactsVC.persons = persons
        shortInfoVC.persons = persons
    }
}
