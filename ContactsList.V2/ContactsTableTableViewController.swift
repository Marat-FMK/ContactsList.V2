//
//  ContactsTableTableViewController.swift
//  ContactsList.V2
//
//  Created by Marat Fakhrizhanov on 20.06.2024.
//

import UIKit

class ContactsTableTableViewController: UITableViewController {

    
    

    var persons: [Person] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 100
    
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        persons.count
   
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contacts", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
       
        let person = persons[indexPath.row]
 
        content.text = person.fullName
        content.image = UIImage(named: person.image)
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        
        cell.contentConfiguration = content

        return cell
    }
    
    

   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let aboutContactVC = segue.destination as? AboutContact else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let person = persons[indexPath.row]
        aboutContactVC.person = person
        
        
        
//        guard let viewControllers = segue.destination as? UITabBarController else { return }
//        
//        guard let shortInfoVC = viewControllers as! ShortInfoTableViewController else { return }
//        
//
//        guard let TBVC = tabBarVC.viewControllers  else { return }
//
//        for viewController in TBVC {
//            if let shortInfoVC = viewController as? ShortInfoTableViewController {
//                shortInfoVC.persons = persons
//            }
//        }
        
    }
    
    
    
    

}
