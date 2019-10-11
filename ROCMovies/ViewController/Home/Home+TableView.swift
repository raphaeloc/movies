//
//  Home+TableView.swift
//  ROCMovies
//
//  Created by Raphael Oliveira Chagas on 11/10/19.
//  Copyright © 2019 Raphael Oliveira Chagas. All rights reserved.
//

import UIKit

extension HomeMoviesViewController: UITableViewDelegate {
    
}

extension HomeMoviesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let movie = movies?.results[indexPath.row]
        tableView.register(nib, forCellReuseIdentifier: cellIdentifier)
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? ROCMoviesTableViewCell else { fatalError() }
        
        cell.posterPath = movie?.posterPath
        cell.movieName.text = movie?.title
        cell.movieDateRelease.text = movie?.releaseDate
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        guard let cell = cell as? ROCMoviesTableViewCell else { return }
        
        cell.posterImage.downloaded(from: "\(Constants.Utils.urlImages)\(String(describing: cell.posterPath ?? ""))")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies?.results.count ?? 0
    }
}
