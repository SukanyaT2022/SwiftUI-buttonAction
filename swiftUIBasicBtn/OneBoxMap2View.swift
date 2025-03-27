//
//  OneBoxMap2View.swift
//  swiftUIBasicBtn
//
//  Created by TS2 on 3/27/25.
//

import SwiftUI

struct OneBoxMap2View: View {
    let leftTitle: String
    let rightTitle: String
    var body: some View {
        HStack{
            Image(systemName: "bird.fill")
                .resizable()
                .frame(width: 30, height: 30)
            Text(leftTitle)
            Spacer()
            Text(rightTitle)
        }
        .padding(.horizontal,30)
      
    }
}

#Preview {
    OneBoxMap2View(leftTitle: "title", rightTitle: "detail")
}
