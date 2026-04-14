//
//  ViewController.swift
//  M10ToDoList_Pedigo
//
//  Created by Pedigo, Charles L. on 4/14/26.
//

import UIKit

class ListViewController: UIViewController {
    
    var toDoList = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

extension ListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = toDoList[indexPath.row]
        return cell
    }
    
    
}

