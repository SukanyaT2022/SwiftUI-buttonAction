//
//  UserImgComp2View.swift
//  swiftUIBasicBtn
//
//  Created by TS2 on 3/27/25.
//

import SwiftUI

struct UserImgComp2View: View {
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "camera")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .padding(.bottom,20)
                    .padding(.leading,200)
            }
            
            Image("s1")
                .resizable()
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .background(Color.yellow)
                .cornerRadius(30)
        }
    }
}

#Preview {
    UserImgComp2View()
}
