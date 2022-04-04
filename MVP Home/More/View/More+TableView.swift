//
//  More+TableView.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-04.
//

import UIKit

extension More: UITableViewDelegate, UITableViewDataSource {
        
    // MARK: - Handle Table View'
    func handelTableView() {
        myTable.delegate = self
        myTable.dataSource = self
        myTable.separatorStyle = .none
    }
    // MARK: - Table View Number Of Rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.getCounter()
    }
    // MARK: - Cell For Row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "MoreCell", for: indexPath) as! MoreCell
//        cell.cellName.text = nameArr[indexPath.row]
        return cell
    }
    
    
}
