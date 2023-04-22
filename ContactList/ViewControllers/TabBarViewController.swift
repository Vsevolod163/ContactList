//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Vsevolod Lashin on 22.04.2023.
//

import UIKit

final class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        guard let personListVC = viewControllers?.first as? PersonListViewController else { return }
        guard let personDetailsVC = viewControllers?.last as? PersonListDetailsViewController else { return }
        
        let persons = Person.getPersons()
        personListVC.personList = persons
        personDetailsVC.personList = persons
    }
}
