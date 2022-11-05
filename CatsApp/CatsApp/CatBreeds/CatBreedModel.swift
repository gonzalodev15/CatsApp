//
//  CatModel.swift
//  CatsApp
//
//  Created by Gonzalo on 5/11/22.
//

import Foundation

struct CatBreedModel: Codable {
    let name: String?
    let origin: String?
    let intelligence: Int?
    let image: CatBreedImage?
    var catImageData: Data?
    
    mutating func setImageData() {
        guard let url = URL(string: (self.image?.url)!) else { return }
        guard let data = try? Data(contentsOf: url) else { return }
        self.catImageData = data
    }
}

struct CatBreedImage: Codable {
    let url: String?
}
