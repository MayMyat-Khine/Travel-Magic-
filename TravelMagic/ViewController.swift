//
//  ViewController.swift
//  TravelMagic
//
//  Created by Khine Myat on 23/07/2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var countriesTableView: UITableView?

    let cities = ["ShangHai", "Sham Shui Po", "Tin Shui Wai", "Queenstown", "PyinOoLwin", "Lucerne", "Paris", "Seoul", "Taunggyi"]
    let citiesWithCountryName: [String: String] = ["ShangHai": "China", "Sham Shui Po": "Hong Kong", "Tin Shui Wai": "Hong Kong", "Queenstown": "Singapore", "PyinOoLwin": "Myanmar", "Lucerne": "Switzerland", "Paris": "France", "Seoul": "South Korea", "Taunggyi": "Myanmar"]
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
        return cities.count
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableViewCell = tableView.dequeueReusableCell(withIdentifier: Constants.callIdentifier, for: indexPath)

        var cellContantConfiguratin = tableViewCell.defaultContentConfiguration()
        let cityName = cities[indexPath.row]
        cellContantConfiguratin.text = cityName
        cellContantConfiguratin.secondaryText = citiesWithCountryName[cityName] ?? ""
        tableViewCell.contentConfiguration = cellContantConfiguratin
        return tableViewCell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cityName = cities[indexPath.row]
        print("User  on  tapped is City \(cityName) , Country \(citiesWithCountryName[cityName] ?? "")")
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
