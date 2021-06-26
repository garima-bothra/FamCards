//
//  CardRow.swift
//  FamCards
//
//  Created by Garima Bothra on 26/06/21.
//

import SwiftUI

struct CardRow: View {
    private let viewModel: CardViewModel
    
    init(viewModel: CardViewModel){
        self.viewModel = viewModel
    }
    
    var body: some View {
        Text("Card: \(viewModel.name)")
    }
}

//struct CardRow_Previews: PreviewProvider {
//    static var previews: some View {
//        CardRow()
//    }
//}
