//
//  NameComp2View.swift
//  swiftUIBasicBtn
//
//  Created by TS2 on 3/27/25.
//

import SwiftUI

struct NameComp2View: View {
    var body: some View {
        HStack{
            Text("Grok")
                .font(.largeTitle)
                .foregroundColor(Color(hex: "FF5733"))
            Spacer()
            ImageStyleCompView(imageName: "info.circle")
            ImageStyleCompView(imageName: "info.square")
           
        }
        .padding(.horizontal,30)
        .padding(.vertical,10)
        .border(Color(hex: "FF5733"), width: 1)
     
    }
}

#Preview {
    NameComp2View()
}
extension Color {
    init(hexString: String) { // Changed name
        let hex = hexString.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        
        let r = Double((int >> 16) & 0xFF) / 255.0
        let g = Double((int >> 8) & 0xFF) / 255.0
        let b = Double(int & 0xFF) / 255.0
        
        self.init(red: r, green: g, blue: b)
    }
}
