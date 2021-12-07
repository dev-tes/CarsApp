//
//  MediaModel.swift
//  CarsApp
//
//  Created by  Tes on 07/12/2021.
//
import Foundation

// MARK: - APIResponse
struct APIResponse: Codable {
    let damageMedia: [DamageMedia]
    let inspectorDetails: InspectorDetails
}

// MARK: - DamageMedia
struct DamageMedia: Codable {
    let inspectionItems: [InspectionItem]
    let name, comment: String?
}

// MARK: - InspectionItem
struct InspectionItem: Codable {
    let medias: [Media]
    let name, response: String
    let comment, condition: String?
}

// MARK: - Media
struct Media: Codable {
}

// MARK: - InspectorDetails
struct InspectorDetails: Codable {
    let inspectorFullName, workshopName: String
}
