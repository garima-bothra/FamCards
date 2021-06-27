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
        GeometryReader { geometry in
        switch designType {
        case .HC1 :
            HC1View(smallCard: card)
      //         .frame(height: geometry.size.height*0.1)
        case .HC3 :
            HC3View(bigCard: card)
      //          .frame(height: geometry.size.height*0.4)
        case .HC4 :
            HC4View(centreCard: card)
      //          .frame(height: geometry.size.height*0.3)
        case .HC5 :
            HC5View(imageCard: card)
      //          .frame(height: geometry.size.height*0.15)
        case .HC6 :
            HC6View(arrowCard: card)
       //        .frame(height: geometry.size.height*0.1)
        }
        }
    }
}
