//
//  CardRow.swift
//  FamCards
//
//  Created by Garima Bothra on 26/06/21.
//

import SwiftUI

//MARK: CardGroup Row View

struct CardRow: View {
    private let viewModel: CardGroupViewModel
    
    init(viewModel: CardGroupViewModel){
        self.viewModel = viewModel
    }
    
    var body: some View {
        GeometryReader() { geometry in
            ScrollView(viewModel.isScrollable ? [.horizontal] : []) {
                HStack(spacing:10){
                    if let cards = viewModel.cards {
                        ForEach(0..<cards.count, id: \.self){
                            CardView(designType: viewModel.designType, card: viewModel.cards[$0])
                                .frame(width: viewModel.isScrollable ? geometry.size.width/CGFloat(cards.count) * 1.5 : geometry.size.width/CGFloat(cards.count))
                        }
                    }
                }
                .frame(width: geometry.size.width,height: geometry.size.height)
            }
        }
    }
}
