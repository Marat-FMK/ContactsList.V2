//
//  ContactsTableTableViewController.swift
//  ContactsList.V2
//
//  Created by Marat Fakhrizhanov on 20.06.2024.
//

import UIKit

class ContactsTableTableViewController: UITableViewController {

    
    

    var persons: [Person]!
    
    
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

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let aboutContactVC = segue.destination as? AboutContact else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let person = persons[indexPath.row]
        aboutContactVC.person = person
        
    }
}
