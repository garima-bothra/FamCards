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

func getHeight(designType: DesignType) -> Float {
    switch designType {
    case .HC1:
        return 0.1
    case .HC3 :
        return 0.4
    case .HC4 :
        return 0.3
    case .HC6 :
        return 0.1
    case .HC5:
        return 0.15
    }
}
