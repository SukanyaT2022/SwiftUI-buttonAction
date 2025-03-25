//
//  PetUserView.swift
//  swiftUIBasicBtn
//
//  Created by TS2 on 3/25/25.
//

import SwiftUI

struct PetUserView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(){
                   
                SquareImgCameraView()
                    .padding(.top, 30)
                    .padding(.bottom,30)
                NameHstackCompView()
                SquareImgCameraView()
                    .padding(.top, 30)
                    .padding(.bottom,30)
                NameHstackCompView()
                SquareImgCameraView()
                    .padding(.top, 30)
                    .padding(.bottom,30)
                NameHstackCompView()
                    
            }
            Spacer()
            //padding for the parent
    //           .padding(10)
               .padding(.top, 100)
               .background(Color.gray.opacity(0.2))
        }
        
    }
}

#Preview {
    PetUserView()
}
