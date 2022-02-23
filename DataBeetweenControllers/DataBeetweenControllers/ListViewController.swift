//
//  ViewController.swift
//  DataBeetweenControllers
//
//  Created by Lesia Vorozhbyt on 23.02.2022.
//

import UIKit

class ListViewController: UIViewController {

    @IBOutlet weak var taskNameLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? AddTaskViewController else {
            return
        }
        
        vc.delegate = self
    }
}

extension ListViewController: AddTaskViewControllerDelegate {
    func enteredTaskName(_ name: String) {
        taskNameLabel.text = name
    }
}

extension ListViewController: UITableViewDelegate {
    
}

extension ListViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdn", for: indexPath)
        cell.textLabel?.text = "indexPath = \(indexPath.section) \(indexPath.row)"
       return cell
    }
}
