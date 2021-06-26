//
//  HC6View.swift
//  FamCards
//
//  Created by Garima Bothra on 27/06/21.
//

import SwiftUI

struct HC6View: View {
    
    @Environment(\.openURL) var openURL
    
    @State var titleText: String
    @State var subheadingText: String
    @State var imageURL: String
    @State var linkURL: String
    
    var body: some View {
        HStack {
        HC1View(titleText: titleText, subheadingText: subheadingText, imageURL: imageURL)
        Spacer()
            Button(action: { guard let linkURL = URL(string: linkURL ?? "") else {
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
