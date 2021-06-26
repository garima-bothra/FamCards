//
//  FormattedTitle.swift
//  FamCards
//
//  Created by Garima Bothra on 26/06/21.
//

import Foundation

struct Entity: Codable {
    let text : String
    let color : CustomColor?
    let url : URL?
}

struct FormattedTitle: Codable {
    let text: String
    let entities: [Entity]
}
