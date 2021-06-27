//
//  CardView.swift
//  FamCards
//
//  Created by Garima Bothra on 27/06/21.
//

import SwiftUI

struct CardView: View {
    
    @State var designType: DesignType
    @State var card: Card
    
    var body: some View {
        switch designType {
        case .HC1 :
            HC1View(smallCard: card)
        case .HC3 :
            HC3View(bigCard: card)
        case .HC4 :
            HC4View(centreCard: card)
        case .HC5 :
            HC5View(imageCard: card)
        case .HC6 :
            HC6View(arrowCard: card)
        }
    }
}
