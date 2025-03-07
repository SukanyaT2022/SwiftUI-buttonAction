//
//  SecondScreenView.swift
//  swiftUIBasicBtn
//
//  Created by TS2 on 3/6/25.
//

import SwiftUI

struct SecondScreenView: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("Second Screen")
                ButtonComp(title: "go to third screen") {
//                    print("hey")
                    goToThirdScreenView()
                }
            }
            
        }
       
    }
    
    //out of body
    // Function to navigate to NextScreen
        func goToThirdScreenView() {
            if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
               let window = windowScene.windows.first{
                window.rootViewController = UIHostingController(rootView: ThirdScreenView())
                window.makeKeyAndVisible()
              
            }
        }
}

#Preview {
    SecondScreenView()
}
