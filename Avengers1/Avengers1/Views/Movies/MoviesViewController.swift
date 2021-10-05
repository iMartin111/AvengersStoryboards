//
//  MoviesViewController.swift
//  Avengers1
//
//  Created by Yan Akhrameev on 05/10/21.
//

import UIKit

class MoviesViewController: UIViewController {
    
    // MARK: - IBOutlets:
    
    @IBOutlet weak var moviesTableView: UITableView!
    
    // MARK: - Properties:
    
    private var moviesController = MoviesController()
    
    // MARK: - View Life Cycle:
    
    override func viewDidLoad() {
        super.viewDidLoad()
        moviesTableView.register(UINib(nibName: K.AvengerCell.cellName, bundle: nil), forCellReuseIdentifier: K.AvengerCell.cellIdentifier)
        moviesTableView.dataSource = self
    }
    

}

// MARK: - Table View Data Source:

extension MoviesViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moviesController.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: AvengersTableViewCell? = tableView.dequeueReusableCell(withIdentifier: K.AvengerCell.cellIdentifier, for: indexPath) as? AvengersTableViewCell
        cell?.setup(using: moviesController.currentMovie(for: indexPath.row))
        return cell ?? UITableViewCell()
    }
    
    
}
