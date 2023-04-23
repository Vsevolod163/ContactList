//
//  PersonListDetailsViewController.swift
//  ContactList
//
//  Created by Vsevolod Lashin on 18.04.2023.
//

import UIKit

final class PersonListDetailsViewController: UITableViewController {
    
    var personList: [Person]!
    
    // MARK: - TableViewDataSource
    override func numberOfSections(in tableView: UITableView) -> Int {
        personList.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList[section].rows.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "personsInfo",
            for: indexPath
        )
        var content = cell.defaultContentConfiguration()
        let person = personList[indexPath.section]
        content.text = person.rows[indexPath.row]
        
        content.image = indexPath.row == 0
            ? UIImage(systemName: Contacts.phone.rawValue)
            : UIImage(systemName: Contacts.email.rawValue)
        
        cell.contentConfiguration = content
        
        return cell
    }
}

// MARK: - UITableViewDelegate
extension PersonListDetailsViewController {
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: "headerInfo") as? HeaderTableViewCell
        let person = personList[section]
        cell?.nameLabel.text = person.name
        cell?.surnameLabel.text = person.surname
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        UIView.animate(withDuration: 0.5) {
            view.transform = CGAffineTransform.identity
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        70
    }
    
    // Cоздание кастомной header view
//    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let contentView = UIView()
//        contentView.backgroundColor = .gray
//
//        let fullNameLabel = UILabel(
//            frame: CGRect(
//                x: 16,
//                y: 3,
//                width: tableView.frame.width,
//                height: 20
//            )
//        )
//        fullNameLabel.text = personList[section].fullName
//        fullNameLabel.font = UIFont.boldSystemFont(ofSize: 17)
//        fullNameLabel.textColor = .white
//        contentView.addSubview(fullNameLabel)
//
//        return contentView
//    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
