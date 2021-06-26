//
//  FormattedTitle.swift
//  FamCards
//
//  Created by Garima Bothra on 26/06/21.
//

import Foundation

struct Entity: Codable {
    var text : String
    var color : String?
    var url : String?
}

struct FormattedTitle: Codable {
    var text: String
    var entities: [Entity]
    
    var components: [String] {
        return text.components(separatedBy: "{}")
    }
}
