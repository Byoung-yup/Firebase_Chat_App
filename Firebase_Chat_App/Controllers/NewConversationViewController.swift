//
//  NewContersationViewController.swift
//  Firebase_Chat_App
//
//  Created by 김병엽 on 2023/01/02.
//

import UIKit
import JGProgressHUD

class NewConversationViewController: UIViewController {
    
    private let spinner = JGProgressHUD(style: .dark)
    
    private let searchBar: UISearchBar = {
       let searchBar = UISearchBar()
        searchBar.placeholder = "Search for Users..."
        return searchBar
    }()
    
    private let tableView: UITableView = {
       let table = UITableView()
        table.isHidden = true
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()
    
    private let noResultsLabel: UILabel = {
       let lbl = UILabel()
        lbl.isHidden = true
        lbl.text = "No Results"
        lbl.textAlignment = .center
        lbl.textColor = .green
        lbl.font = .systemFont(ofSize: 21, weight: .medium)
        return lbl
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        searchBar.delegate = self
        view.backgroundColor = .white
        navigationController?.navigationBar.topItem?.titleView = searchBar
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Cancel", style: .done, target: self, action: #selector(dismissSelf))
        
        searchBar.becomeFirstResponder()
    }
    
    @objc func dismissSelf() {
        dismiss(animated: true)
    }
}

extension NewConversationViewController: UISearchBarDelegate {
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        
    }
}
