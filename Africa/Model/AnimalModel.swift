//
//  AnimalModel.swift
//  Africa
//
//  Created by Kaloyan Petkov on 29.07.23.
//

import Foundation

struct Animal: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
