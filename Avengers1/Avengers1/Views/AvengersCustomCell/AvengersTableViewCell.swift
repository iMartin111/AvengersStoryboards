//
//  AvengersTableViewCell.swift
//  Avengers1
//
//  Created by Yan Akhrameev on 05/10/21.
//

import UIKit

class AvengersTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlets:
    
    @IBOutlet weak var avengerImage: UIImageView!
    @IBOutlet weak var avengerNameLabel: UILabel!
    
    // MARK: - View Life Cycle:
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    // MARK: - Methods:
    
    func setup(using avenger: Avenger) {
        imageStyle()
        avengerImage.image = UIImage(named: avenger.image)
        avengerNameLabel.text = avenger.name
    }
    
    func imageStyle() {
        avengerImage.layer.cornerRadius = 10
        avengerImage.layer.masksToBounds = true
    }
    
}
