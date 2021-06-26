//
//  Card.swift
//  FamCards
//
//  Created by Garima Bothra on 26/06/21.
//

import Foundation

//MARK: - Card Sub-Models
//struct CardImage: Codable {
//    enum image_type {
//        case asset(asset_type: String?)
//        case external(image_url: URL?)
//    }
//}

struct CardImage: Codable {
    enum image_type: String {
        case asset
        case external
    }
    var image_url: String?
    var asset_type: String?
}

struct Gradient: Codable {
    var colours: [String]?
    var angle: Double
}

struct CallToAction: Codable {
    var text: String
    var bg_color: String?
    var url: String?
    var text_color: String?
}

//MARK: - Card Model

struct  Card: Codable {
    var name: String
    var formatted_title: FormattedTitle?
    var title: String?
    var formatted_description: FormattedTitle?
    var description: String?
    var icon: CardImage?
    var url: String?
    var bg_image: CardImage?
    var bg_color: String?
    var bg_gradient: Gradient?
    var cta: [CallToAction]?
}



//MARK: - Card Error Model

enum NetworkingError: Error {
    case parsing(description: String)
    case networking(description: String)
}
