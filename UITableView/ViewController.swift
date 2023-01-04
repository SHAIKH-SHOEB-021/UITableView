//
//  ViewController.swift
//  UITableView
//
//  Created by shoeb on 04/01/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let arrData = ["I-Phone","Samsung","Xiaomi","Nokia","Jio","Moto","Realme","OnePlus","GooglePixel","Hawai","Asus","Horner","Oppo","Vivo","Techno"]
    var tableViewUI : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewUI = UITableView()
        tableViewUI.translatesAutoresizingMaskIntoConstraints = false
        tableViewUI.delegate = self
        tableViewUI.dataSource = self
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

