//
//  Card.swift
//  FamCards
//
//  Created by Garima Bothra on 26/06/21.
//

import Foundation

//MARK: - Card Sub-Models
struct CardImage: Codable {
    enum image_type {
        case asset(asset_type: String?)
        case external(image_url: URL?)
    }
}

struct Gradient: Codable {
    let colours: [CustomColor]
    let angle: Double
}

struct CallToAction: Codable {
    let text: String
    let bg_color: CustomColor?
    let url: URL?
    let text_color: CustomColor?
}

//MARK: - Card Model
struct  Card: Codable {
    let name: String
    let formatted_title: FormattedTitle?
    let title: String?
    let formatted_description: FormattedTitle?
    let description: String?
    let icon: CardImage?
    let url: URL?
    let bg_image: CardImage?
    let bg_color: CustomColor?
    let bg_gradient: Gradient?
    let cta: [CallToAction]
}
