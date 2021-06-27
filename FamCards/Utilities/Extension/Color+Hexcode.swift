//
//  Color.swift
//  FamCards
//
//  Created by Garima Bothra on 26/06/21.
//

import Foundation
import UIKit
import SwiftUI

//MARK:  Get Color from hexCode

extension Color {
    
    init(hexCode: String) {
        var colorString: String = String(hexCode.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).dropFirst())
                if colorString.hasPrefix("#") {
                    _ = colorString.removeFirst()
                }
        // Fix invalid values
                if colorString.count > 8 {
                   colorString = String(colorString.prefix(8))
                }

                // Scanner creation
                let scanner = Scanner(string:colorString)

                var color: UInt64 = 0
                scanner.scanHexInt64(&color)
        if colorString.count == 6 {
                    let mask = 0x0000FF
                    let r = Int(color >> 16) & mask
                    let g = Int(color >> 8) & mask
                    let b = Int(color) & mask

                    let red = Double(r) / 255.0
                    let green = Double(g) / 255.0
                    let blue = Double(b) / 255.0
                    self.init(.sRGB, red: red, green: green, blue: blue, opacity: 1)

                } else if colorString.count == 8 {
                    let mask = 0x000000FF
                    let r = Int(color >> 24) & mask
                    let g = Int(color >> 16) & mask
                    let b = Int(color >> 8) & mask
                    let a = Int(color) & mask

                    let red = Double(r) / 255.0
                    let green = Double(g) / 255.0
                    let blue = Double(b) / 255.0
                    let alpha = Double(a) / 255.0

                   self.init(.sRGB, red: red, green: green, blue: blue, opacity: alpha)

                } else {
                    self.init(.sRGB, red: 1, green: 1, blue: 1, opacity: 1)
                }
    }
}

//MARK:  Get Gradient from Hexcodes

func getGradient(hexStrings: [String?])-> Gradient {
    let colours: [Color] = hexStrings.map{ Color(hexCode: $0 ?? "#FFFFFF") }
    return Gradient(colors: colours)
}
