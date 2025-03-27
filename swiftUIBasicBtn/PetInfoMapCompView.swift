//
//  PetInfoMapCompView.swift
//  swiftUIBasicBtn
//
//  Created by TS2 on 3/26/25.
//

import SwiftUI

struct PetInfoMapCompView: View {
    let leftTitle:String
    let rightTitle:String
    var body: some View {
        HStack{
            Image(systemName: "airplane")
            Text(leftTitle)
            Text(rightTitle)
        }
       
    }
}

#Preview {
    PetInfoMapCompView(leftTitle: "title", rightTitle: "Pet detail")
}
