//
//  OneBox4MapCompView.swift
//  swiftUIBasicBtn
//
//  Created by TS2 on 3/25/25.
//

import SwiftUI

struct OneBox4MapCompView: View {
    var body: some View {
       HStack{
            Image(systemName: "key")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
                .padding(.trailing,20)
            Text("Title")
               .font(.headline)
           Spacer()
           Text("detail")
              .font(.headline)
        }
       .padding()
        .background(Color.pink.opacity(0.2))
    }
}

#Preview {
    OneBox4MapCompView()
}
