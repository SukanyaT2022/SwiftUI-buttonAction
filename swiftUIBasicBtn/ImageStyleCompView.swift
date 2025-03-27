//
//  ImageStyleCompView.swift
//  swiftUIBasicBtn
//
//  Created by TS2 on 3/27/25.
//

import SwiftUI

struct ImageStyleCompView: View {
    let imageName: String
    var body: some View {
        Image(systemName: imageName)
            .resizable()
            .frame(width: 32, height: 32)
            .aspectRatio(contentMode: .fit)
            .padding(.trailing,10)
            .foregroundColor(Color(hex: "FF5733"))
    }
}

#Preview {
    ImageStyleCompView(imageName: "plus")
}
