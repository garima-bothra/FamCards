//
//  HC1View.swift
//  FamCards
//
//  Created by Garima Bothra on 26/06/21.
//

import SwiftUI

struct HC1View: View {
    
    @State var titleText: String
    @State var subheadingText: String
    @State var imageURL: String
    
    var body: some View {
        GeometryReader { geometry in
        HStack {
            RemoteImage(url: imageURL)
                .aspectRatio(contentMode: .fit)
                
            
            VStack(alignment: .leading) {
            Text(titleText)
            Text(subheadingText)
                .font(.subheadline)
                .foregroundColor(.gray)
            }
            Spacer()
        }
        }
    }
}

//struct HC1View_Previews: PreviewProvider {
//    static var previews: some View {
//        HC1View(titleText: "Small display card", subheadingText: "Arya Stark")
//    }
//}
