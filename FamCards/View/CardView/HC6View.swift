//
//  HC6View.swift
//  FamCards
//
//  Created by Garima Bothra on 27/06/21.
//

import SwiftUI

struct HC6View: View {
    
    @Environment(\.openURL) var openURL
    
    @State var arrowCard: Card
    
    var body: some View {
        HStack {
        HC1View(smallCard: arrowCard)
        Spacer()
            Button(action: { guard let linkURL = URL(string: arrowCard.url ?? "") else {
                return
            }
            openURL(linkURL) }, label: {
                Image(systemName: "arrow.right")
            })
        }
    }
}

//struct HC6View_Previews: PreviewProvider {
//    static var previews: some View {
//        HC6View()
//    }
//}