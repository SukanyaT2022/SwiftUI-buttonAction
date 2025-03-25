//
//  SaveViewFullScreenView.swift
//  swiftUIBasicBtn
//
//  Created by TS2 on 3/25/25.
//

import SwiftUI

struct SaveViewFullScreenView: View {
    var body: some View {
        VStack{
            Image("s4")
                .resizable()
                .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
                .edgesIgnoringSafeArea(.all)
        }
        
        
        
    }
}

#Preview {
    SaveViewFullScreenView()
}
