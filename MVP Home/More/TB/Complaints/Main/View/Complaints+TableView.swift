//
//  File.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-05.
//

import UIKit

extension Complaints: UITableViewDelegate, UITableViewDataSource {
    
    func handelTableView() {
        complaintsTableView.delegate = self
        complaintsTableView.dataSource = self
        complaintsTableView.separatorStyle = .none
        complaintsTableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "ComplaintsCell")
        complaintsTableView.register(UINib(nibName: "HeaderCell", bundle: nil), forCellReuseIdentifier: "HeaderCell")
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = complaintsTableView.dequeueReusableCell(withIdentifier: "ComplaintsCell", for: indexPath) as! TableViewCell
        cell.selectionStyle = .none
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 72
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = UIColor.white
        return view
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 16
    }
    
}
