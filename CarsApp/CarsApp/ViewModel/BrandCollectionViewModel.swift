//
//  BrandCollectionViewModel.swift
//  CarsApp
//
//  Created by  Tes on 06/12/2021.
//

import Foundation

class BrandCollectionViewModel {
    let brandName: String
    let productImageURL: String
    var imageData: Data? = nil
    
    init(brandName: String, productImageURL:String){
        self.brandName = brandName
        self.productImageURL = productImageURL
    }
}
