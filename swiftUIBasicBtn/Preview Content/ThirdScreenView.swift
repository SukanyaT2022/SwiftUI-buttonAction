//
//  ThirdScreenView.swift
//  swiftUIBasicBtn
//
//  Created by TS2 on 3/7/25.
//

import SwiftUI

struct ThirdScreenView: View {
    var body: some View {
        Text("third screen")
        Button("got to fourth screen") {
            if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
               let window = windowScene.windows.first{
                window.rootViewController = UIHostingController(rootView: FourthScreenView())
                window.makeKeyAndVisible()
              
            }
//            end connect screen code
        }

    }
}

#Preview {
    ThirdScreenView()
}
