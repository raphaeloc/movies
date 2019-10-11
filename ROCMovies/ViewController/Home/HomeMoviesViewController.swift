//
//  HomeMoviesViewController.swift
//  ROCMovies
//
//  Created by Raphael Oliveira Chagas on 11/10/19.
//  Copyright © 2019 Raphael Oliveira Chagas. All rights reserved.
//

import UIKit

class HomeMoviesViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    let cellIdentifier = "ROCMoviesTableViewCell"
    let nib = UINib(nibName: "ROCMoviesTableViewCell", bundle: Bundle.main)
    
    var movies: Movies?
    var api = ApiProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.tableFooterView = UIView()
        
        api.getMovies { (movies) in
            self.movies = movies
            self.tableView.reloadData()
        }
    }
}

