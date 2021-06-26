//
//  CardGroup.swift
//  FamCards
//
//  Created by Garima Bothra on 26/06/21.
//

import Foundation

public enum DesignType: String, Codable, Hashable {
    /// Small display card.
    case HC1
    /// Big display card.
    case HC3
    /// Center card.
    case HC4
    /// Only image card.
    case HC5
    /// Small card with arrow.
    case HC6
}

struct CardGroup: Codable {
    var design_type: DesignType
    var name: String
    var cards: [Card]
    var is_scrollable: Bool
    //var card_type: Int?
}

typealias CardGroups = [CardGroup]

