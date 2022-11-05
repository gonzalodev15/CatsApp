//
//  CatBreedTableViewCell.swift
//  CatsApp
//
//  Created by Gonzalo on 5/11/22.
//

import UIKit

class CatBreedTableViewCell: UITableViewCell {

    @IBOutlet weak var breedNameLabel: UILabel!
    @IBOutlet weak var breedImage: UIImageView!
    @IBOutlet weak var originCountryLabel: UILabel!
    @IBOutlet weak var intelligenceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configure(catBreedModel: CatBreedModel?) {
        if let name = catBreedModel?.name {
            breedNameLabel.text = name
        }
        if let originCountry = catBreedModel?.origin {
            originCountryLabel.text = originCountry
        }
        
        if let intelligence = catBreedModel?.intelligence {
            intelligenceLabel.text = String(intelligence)
        }
        
        if let catImageData = catBreedModel?.catImageData {
            breedImage.image = UIImage(data: catImageData)
        }
    }
}
