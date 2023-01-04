//
//  ViewController.swift
//  UITableView
//
//  Created by shoeb on 04/01/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let arrData = ["I-Phone","Samsung","Xiaomi","Nokia","Jio","Moto","Realme","OnePlus","GooglePixel","Hawai","Asus","Horner","Oppo","Vivo","Techno"]
    let arrVlaue = ["Rs 10","Rs 5","Rs 30","Rs 60","Rs 40","Rs 20","Rs 50","Rs 10","Rs 20","Rs 50","Rs 5","Rs 10","Rs 40","Rs 30","Rs 20"]
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
        var tableViewCell : UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell")!
        tableViewCell = UITableViewCell(style: .subtitle, reuseIdentifier: "Cell")
        tableViewCell.textLabel?.text = arrData[indexPath.row]
        tableViewCell.detailTextLabel?.text = arrVlaue[indexPath.row]
        return tableViewCell
    }
}

