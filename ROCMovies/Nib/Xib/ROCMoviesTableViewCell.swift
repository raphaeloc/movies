//
//  ROCMoviesTableViewCell.swift
//  ROCMovies
//
//  Created by Raphael Oliveira Chagas on 11/10/19.
//  Copyright © 2019 Raphael Oliveira Chagas. All rights reserved.
//

import UIKit

class ROCMoviesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var posterImage: UIImageView!
    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var movieDateRelease: UILabel!
    @IBOutlet weak var stackInformations: UIStackView!
    
    var posterPath: String?

    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
