//
//  MediaModel.swift
//  CarsApp
//
//  Created by  Tes on 07/12/2021.
//
import Foundation

// MARK: - APIResponse
struct MediaResponse: Codable {
    let id: String
    let year: Int
    let mileage: Int
    let marketplacePrice: Int
    let transmission: String
    let interiorColor, engineType: String
    let fuelType: String
    let city: String
    let mileageUnit: String
}
