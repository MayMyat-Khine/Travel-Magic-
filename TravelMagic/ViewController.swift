//
//  ViewController.swift
//  TravelMagic
//
//  Created by Khine Myat on 23/07/2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var countriesTableView: UITableView?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableView = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        return tableView
    }
}
