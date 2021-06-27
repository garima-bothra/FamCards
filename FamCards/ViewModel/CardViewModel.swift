//
//  CardViewModel.swift
//  FamCards
//
//  Created by Garima Bothra on 27/06/21.
//

import Foundation
import SwiftUI

struct CardViewModel: Identifiable {
    private let item: Card
    
    var id = UUID()
    
    var card: Card {
        return item
    }
    
    init(item: Card){
        self.item = item
    }
    
}
