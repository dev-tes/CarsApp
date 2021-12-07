//
//  MainCollectionViewModel.swift
//  CarsApp
//
//  Created by  Decagon on 07/12/2021.
//

import Foundation

class MainCollectionViewModel {
    let title: String
    let imageURL: String
    var imageData: Data? = nil
    let city: String
    let  mileage, year : Int
    let state, mileageUnit: String
    
    init(title: String,
         imageURL: String,
         year: Int,
         city: String,
         state: String,
         mileage: Int,
         mileageUnit: String){
        self.title = title
        self.imageURL = imageURL
        self.year = year
        self.city = city
        self.state = state
        self.mileage = mileage
        self.mileageUnit = mileageUnit
        
    }
}
