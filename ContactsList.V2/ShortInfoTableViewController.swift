//
//  ShortInfoTableViewController.swift
//  ContactsList.V2
//
//  Created by Marat Fakhrizhanov on 20.06.2024.
//

import UIKit

class ShortInfoTableViewController: UITableViewController {
    
    
    var persons: [Person] = []
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
    
    // MARK: - Table view data source
    
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 2
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "shortInfo", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        let person = persons[indexPath.row]
        
        content.text = person.phone
        content.secondaryText = person.email
        cell.contentConfiguration = content
        
        return cell
    }
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "contacts", for: indexPath)
//        
//        var content = cell.defaultContentConfiguration()
//       
//        let person = persons[indexPath.row]
// 
//        content.text = person.fullName
//        content.image = UIImage(named: person.image)
//        content.imageProperties.cornerRadius = tableView.rowHeight / 2
//        
//        cell.contentConfiguration = content
//
//        return cell
//    }
    
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        switch section {
        case 0: return persons[0].fullName
        case 1: return persons[1].fullName
        case 2: return persons[2].fullName
        case 3: return persons[3].fullName
        case 4: return persons[4].fullName
        case 5: return persons[5].fullName
        case 6: return persons[6].fullName
        case 7: return persons[7].fullName
        case 8: return persons[8].fullName
        default:
            return persons[9].fullName
        }
    }
}
