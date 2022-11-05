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
        if let name = catBreedModel?.name,
            let originCountry = catBreedModel?.origin,
            let intelligence = catBreedModel?.intelligence,
            let catImageData = catBreedModel?.catImageData {
            breedNameLabel.text = name
            originCountryLabel.text = originCountry
            intelligenceLabel.text = String(intelligence)
            breedImage.image = UIImage(data: catImageData)
        }
    }
}
