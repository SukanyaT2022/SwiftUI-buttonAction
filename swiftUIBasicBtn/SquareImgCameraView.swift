//
//  SquareImgCameraView.swift
//  swiftUIBasicBtn
//
//  Created by TS2 on 3/24/25.
//

import SwiftUI

struct SquareImgCameraView: View {
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Image(systemName: "camera.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 60))
                
            }
          
         
            Image("s4")
                .resizable()
                .frame(width: 300, height: 300)
                .cornerRadius(20)
        }
    }
}

#Preview {
    SquareImgCameraView()
}
