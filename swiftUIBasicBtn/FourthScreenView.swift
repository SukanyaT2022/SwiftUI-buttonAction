//
//  FourthScreenView.swift
//  swiftUIBasicBtn
//
//  Created by TS2 on 3/7/25.
//

import SwiftUI

struct FourthScreenView: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                ButtonComp(title: "go to 5 screen") {
                    if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
                       let window = windowScene.windows.first{
                        window.rootViewController = UIHostingController(rootView: FifhScreenView(
                            logoImage: nil)
                        )
                        window.makeKeyAndVisible()
                      
                    }
                
                }
//                closing end of button component
            }
            
        }
       
    }
}

#Preview {
    FourthScreenView()
}
