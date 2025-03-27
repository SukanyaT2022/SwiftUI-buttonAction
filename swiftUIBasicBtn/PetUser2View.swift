//
//  PetUser2View.swift
//  swiftUIBasicBtn
//
//  Created by TS2 on 3/27/25.
// do call api and map api tomorrow

import SwiftUI
struct PetModel2{
    let id = UUID()
    let breed : String
    let age : Int
    let PetType : String
    let gender : String
}

struct PetUser2View: View {
//    tuple value pair --combination of two or three value -- not work with List so we need model struct class or enum for List
    
    
//    let PetDataArray : [(String,String)] = [("Breed", "lab"),("PetType","dog"),("Age", "2"), ("Gender", "female")]
    
    
    let petPropertyTitleArray :[String] = ["Breed", "PetType", "Age", "Gender"]
    
    let petArray : [PetModel2] = [
        .init(breed: "lab", age: 2, PetType: "dog", gender: "female"),
        
            .init(breed: "bulldog", age: 3, PetType: "dog", gender: "male"),
        
            .init(breed: "shiba", age: 1, PetType: "dog", gender: "female")
        ]
    
    
    var body: some View {
        VStack{
            
            UserImgComp2View()
                .padding(.top, 30)
            NameComp2View()
            VStack{
//            List{
//                OneBoxMap2View(leftTitle: petArray.first?.breed ?? "", rightTitle: petPropertyTitleArray[0])
////               string intrepulation --convert int to string -  "\(  petArray.first?.age ?? 0)"
//                OneBoxMap2View(leftTitle: "\(  petArray.first?.pet ?? 0)", rightTitle: petPropertyTitleArray[1])
//                }
//                
//                OneBoxMap2View(leftTitle: "\(  petArray.first?.pet ?? 0)", rightTitle: petPropertyTitleArray[1])
//                }
          
              
                
                
            }
        }
        Spacer()
          
    }
}

#Preview {
    PetUser2View()
}
