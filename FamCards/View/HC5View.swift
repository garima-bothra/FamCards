//
//  HC5View.swift
//  FamCards
//
//  Created by Garima Bothra on 27/06/21.
//

import SwiftUI

struct HC5View: View {
    
    
    @State var imageURL: String
    
    var body: some View {
        GeometryReader { geometry in
        RemoteImage(url: imageURL)
            .aspectRatio(contentMode: .fill)
            .frame(height: geometry.size.height * 0.15)
        }
    }
}

//struct HC5View_Previews: PreviewProvider {
//    static var previews: some View {
//        HC5View()
//    }
//}
