//
//  ViewController.swift
//  Avengers1
//
//  Created by Yan Akhrameev on 05/10/21.
//

import UIKit

class AvengersViewController: UIViewController {
    
    // MARK: - IBOutlets:
    
    @IBOutlet weak var avengersTableView: UITableView!
    
    // MARK: - Properties:
    
    private var avengersController = AvengersController()

    // MARK: - View Life Cycle:
    
    override func viewDidLoad() {
        super.viewDidLoad()
        avengersTableView.register(UINib(nibName: K.AvengerCell.cellName, bundle: nil), forCellReuseIdentifier: K.AvengerCell.cellIdentifier)
        avengersTableView.dataSource = self
        
    }


}

// MARK: - Table View Data Source:

extension AvengersViewController: UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return avengersController.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: AvengersTableViewCell? = tableView.dequeueReusableCell(withIdentifier: K.AvengerCell.cellIdentifier, for: indexPath) as? AvengersTableViewCell
        cell?.setup(using: avengersController.currentAvenger(for: indexPath.row))
        return cell ?? UITableViewCell()
    }
    
    
}

