//
//  ViewController.swift
//  UITableView
//
//  Created by shoeb on 04/01/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var arrData = ["One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten"]
    var tableViewUI : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewUI = UITableView()
        tableViewUI.translatesAutoresizingMaskIntoConstraints = false
        tableViewUI.dataSource = self
        tableViewUI.delegate = self
        tableViewUI.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        view.addSubview(tableViewUI)
        NSLayoutConstraint.activate([
            tableViewUI.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableViewUI.topAnchor.constraint(equalTo: view.topAnchor),
            tableViewUI.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableViewUI.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrData.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableViewCell : UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell")!
        tableViewCell.textLabel?.text = arrData[indexPath.row]
        return tableViewCell
    }
    
}

