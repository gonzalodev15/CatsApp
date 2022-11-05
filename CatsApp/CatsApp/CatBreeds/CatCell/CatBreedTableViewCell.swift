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
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(catBreedModel: CatBreedModel) {
        breedNameLabel.text = catBreedModel.breedName
        originCountryLabel.text = catBreedModel.origin
        if let intelligence = catBreedModel.intelligence {
            intelligenceLabel.text = String(intelligence)
        }
        
        if let imageUrl = catBreedModel.image?.url {
            guard let url = URL(string: imageUrl) else { return }
            guard let data = try? Data(contentsOf: url) else { return }
            breedImage.image = UIImage(data: data)
        }
        
    }
}
