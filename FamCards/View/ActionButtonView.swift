//
//  ActionButtonView.swift
//  FamCards
//
//  Created by Garima Bothra on 27/06/21.
//

import SwiftUI

struct ActionButtonView: View {
    
    @Environment(\.openURL) var openURL
    
    @State var text: String
    @State var bgColor: Color
    @State var textColor: Color
    @State var url: String
    
    var body: some View {
        Button(action: { guard let linkURL = URL(string: url) else {
            return
        }
        openURL(linkURL) }, label: {
            Text(text)
        })
        .background(bgColor)
        .foregroundColor(textColor)
        .cornerRadius(10)
        
    }
}

//struct ActionButtonView_Previews: PreviewProvider {
//    static var previews: some View {
//        ActionButtonView()
//    }
//}
