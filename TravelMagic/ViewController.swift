//
//  ViewController.swift
//  TravelMagic
//
//  Created by Khine Myat on 23/07/2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var countriesTableView: UITableView?

    let countries = ["China", "Myanmar", "India", "HongKong", "Thai", "Maxico", "Paris", "United Kingdom", "Japan"]
    enum Constants {
        static var callIdentifier = "MagicTableCell"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        countriesTableView?.register(UITableViewCell.self, forCellReuseIdentifier: Constants.callIdentifier)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableViewCell = tableView.dequeueReusableCell(withIdentifier: Constants.callIdentifier, for: indexPath)

        var cellContantConfiguratin = tableViewCell.defaultContentConfiguration()
        cellContantConfiguratin.text = countries[indexPath.row]
        tableViewCell.contentConfiguration = cellContantConfiguratin
        return tableViewCell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("User ON Tapped index \(indexPath)")
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
