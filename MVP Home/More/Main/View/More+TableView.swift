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
        cell.selectionStyle = .none
        cell.cellName.text = presenter.nameArr[indexPath.row]
        cell.cellImage.image = presenter.imageArr[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var VC: AnyObject
        var id = "2"
        
        switch indexPath.row {
            
        case 0:
            VC = Complaints()
        case 1:
            VC = ContactWithUs()
        case 2:
            VC = WhoAreWe()
        case 3:
            VC = TermsAndConditions()
        default:
            id = "1"
            VC = Language()
        }
        if (id == "1") {
            let newVC = Language()
            newVC.modalPresentationStyle = .overFullScreen
            self.present(newVC as UIViewController, animated: true, completion: nil)
        }else{
            self.navigationController?.pushViewController(VC as! UIViewController, animated: true)
        }
    }
}
