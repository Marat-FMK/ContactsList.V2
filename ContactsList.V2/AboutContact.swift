//
//  ViewController.swift
//  ContactsList.V2
//
//  Created by Marat Fakhrizhanov on 18.06.2024.
//

import UIKit

class AboutContact: UIViewController {
    
   
    
    @IBOutlet weak var personImage: UIImageView!
    @IBOutlet weak var eMailLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var fullNmaeLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        phoneNumberLabel.text = (phoneNumberLabel.text ?? "") + person.phone
        eMailLabel.text = (eMailLabel.text ?? "") + person.email
        fullNmaeLabel.text = person.fullName
        
        personImage.image = UIImage(named: person.image)
    }
}

