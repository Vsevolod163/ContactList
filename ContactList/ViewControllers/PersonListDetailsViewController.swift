//
//  PersonListDetailsViewController.swift
//  ContactList
//
//  Created by Vsevolod Lashin on 18.04.2023.
//

import UIKit

final class PersonListDetailsViewController: UITableViewController {
    
    var personList: [Person]!
}

// MARK: - TableViewDataSource
extension PersonListDetailsViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        personList.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
        
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(
            withIdentifier: "personsInfo",
            for: indexPath
         )
         var content = cell.defaultContentConfiguration()
         let person = personList[indexPath.section]
         
         if indexPath.row == 0 {
             content.text = person.phone
         } else {
             content.text = person.email
         }
        
         cell.contentConfiguration = content
         
         return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        personList[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
