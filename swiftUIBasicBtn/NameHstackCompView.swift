//
//  NameHstackCompView.swift
//  swiftUIBasicBtn
//
//  Created by TS2 on 3/24/25.
//

import SwiftUI

struct NameHstackCompView: View {

    var body: some View {
        HStack{
            Text("Space")
                .font(Font.system(size: 30, weight: .bold, design:.serif))
            Spacer()
            Image(systemName: "info.circle")
                .resizable()
                .frame(width: 35, height: 35)
                .foregroundColor(.blue)
                
            Image(systemName: "square.grid.2x2")
                .resizable()
                .frame(width: 35, height: 35)
                .foregroundColor(.blue)
                .foregroundColor(.blue)
        }
        .padding(.horizontal,40)
    }
}

#Preview {
    NameHstackCompView()
}
