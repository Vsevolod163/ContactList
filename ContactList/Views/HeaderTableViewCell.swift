//
//  HeaderTableViewCell.swift
//  ContactList
//
//  Created by Vsevolod Lashin on 23.04.2023.
//

import UIKit

final class HeaderTableViewCell: UITableViewCell {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    
    @IBAction func phoneButtonPressed() {
        print("Calling \(nameLabel.text ?? "") \(surnameLabel.text ?? "")...")
    }
}
