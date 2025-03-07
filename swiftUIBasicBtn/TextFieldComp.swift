//
//  TextFieldComp.swift
//  swiftUIBasicBtn
//
//  Created by TS2 on 2/27/25.
//

import SwiftUI

struct TextFieldComp: View {
    @State var valueTextfield:String = ""
    var placeHolder:String = ""

    var body: some View {
        TextField(placeHolder, text: $valueTextfield)
            .frame(height: 46)
        //text center
            .multilineTextAlignment(.center)
//            .border(.orange, width: 3)
            .border(Color(hex: "#52be80"), width: 3)
            .padding(.horizontal, 20)
            .padding(.vertical, 5)
//            .padding(.leading, 16)
//            .padding(.trailing, 16)
    }
}

//extension for hex color 

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 6: // RGB (default alpha is 1.0)
            (a, r, g, b) = (255, (int >> 16) & 0xFF, (int >> 8) & 0xFF, int & 0xFF)
        case 8: // ARGB
            (a, r, g, b) = ((int >> 24) & 0xFF, (int >> 16) & 0xFF, (int >> 8) & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0) // Default to black if invalid input
        }

        self.init(
            .sRGB,
            red: Double(r) / 255.0,
            green: Double(g) / 255.0,
            blue: Double(b) / 255.0,
            opacity: Double(a) / 255.0
        )
    }
}


#Preview {
    TextFieldComp()
}
