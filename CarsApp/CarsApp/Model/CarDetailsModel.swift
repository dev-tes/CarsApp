//
//  CarDetailsModel.swift
//  CarsApp
//
//  Created by  Tes on 06/12/2021.
//

import Foundation

// MARK: - Welcome
struct CarDetails: Codable {
    let error: String
    let code: Int
    let message: String
    let details: [Detail]
}

// MARK: - Detail
struct Detail: Codable {
//    let typeURL: String
    let value: String
}
