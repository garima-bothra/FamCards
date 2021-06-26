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
    
    var body: some View {
        GeometryReader { geometry in
        HStack {
            RemoteImage(url:  "https://westeros-staging.s3.amazonaws.com/media/images/generic/e154e9ddcb8a42ff94a926cb2d7927d8.png")
                .aspectRatio(contentMode: .fit)
                
            
            VStack(alignment: .leading) {
            Text(titleText)
            Text(subheadingText)
                .font(.subheadline)
                .foregroundColor(.gray)
            }
            Spacer()
        }
        .padding()
        .background(Color(hexCode: "#F2F3F3"))
        .cornerRadius(20)
        
        
        }
    }
}

struct HC1View_Previews: PreviewProvider {
    static var previews: some View {
        HC1View(titleText: "Small display card", subheadingText: "Arya Stark")
    }
}
