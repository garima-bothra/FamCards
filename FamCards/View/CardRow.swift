//
//  CardRow.swift
//  FamCards
//
//  Created by Garima Bothra on 26/06/21.
//

import SwiftUI

struct CardRow: View {
    private let viewModel: CardGroupViewModel
    
    init(viewModel: CardGroupViewModel){
        self.viewModel = viewModel
    }
    
    var body: some View {
        HStack(spacing:2){
            if let cards = viewModel.cards {
                ForEach(0..<cards.count, id: \.self){
                    CardView(designType: viewModel.designType, card: viewModel.cards[$0])
                }
            }
        }
    }
}
