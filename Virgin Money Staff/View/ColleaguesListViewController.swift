//
//  ColleaguesViewController.swift
//  Virgin Money Staff
//
//  Created by Megha on 11/10/22.

import UIKit
import Foundation


protocol ListViewModelAction: AnyObject {
    func refreshUI()
}

final class ColleaguesListViewController: UIViewController {
    
    @IBOutlet private weak var colleagueTableView: UITableView!
    private var viewModel:ColleaguesListViewModel!
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel =  ColleaguesListViewModel(apiManager: RealAPIManager(), actionDelegate: self)
        viewModel.fetchPeople()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? CollegueDetailsViewController {
            destination.colleague = viewModel.getPeople(index: (colleagueTableView.indexPathForSelectedRow?.row)!)
        }
    }
}


extension ColleaguesListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.peoplesCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: CollegueTableViewCell = colleagueTableView.dequeueReusableCell(withIdentifier: "collegueCell") as!
        CollegueTableViewCell
        
        let colleague = viewModel.getPeople(index: indexPath.row)
     
        cell.setData(colleague: colleague)

        return cell
    }

}

extension ColleaguesListViewController: ListViewModelAction {
    func refreshUI() {
        DispatchQueue.main.async {
            self.colleagueTableView?.reloadData()
        }
    }
}
