//
//  PetUserView.swift
//  swiftUIBasicBtn
//
//  Created by TS2 on 3/25/25.
//

import SwiftUI

struct PetUserView: View {
    let petDataArray = ["cat", "dog", "bird", "snake", "lizard", "cow", "horse", "rabbit"]
    var body: some View {
//        ScrollView(.vertical, showsIndicators: false){
        VStack{
            VStack{
                   
                SquareImgCameraView()
                    .padding(.top, 30)
                    .padding(.bottom,30)
                NameHstackCompView()
              
            }
//            Spacer()
            //padding for the parent
    //           .padding(10)
              
               .background(Color.gray.opacity(0.2))
        
        List(petDataArray, id: \.self){item in
               
            PetInfoMapCompView(leftTitle: item, rightTitle: "")
        }
            Spacer()
        }
           
        }
        
//    }
}

#Preview {
    PetUserView()
}
