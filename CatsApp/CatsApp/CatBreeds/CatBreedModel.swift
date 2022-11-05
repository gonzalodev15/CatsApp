//
//  CatModel.swift
//  CatsApp
//
//  Created by Gonzalo on 5/11/22.
//

import Foundation

struct CatBreedModel: Codable {
    let breedName: String?
    let origin: String?
    let intelligence: Int?
    let image: CatBreedImage?
}

struct CatBreedImage: Codable {
    let url: String?
}
