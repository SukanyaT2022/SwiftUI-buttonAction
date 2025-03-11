//
//  ButtonComp.swift
//  swiftUIBasicBtn
//
//  Created by TS2 on 2/27/25.
//

import SwiftUI

struct ButtonComp: View {
    var title: String
    var tapAction: () -> Void
    var body: some View {
        Button(title, action: {
            tapAction()
        })

//            Text(title)
                .font(.system(size: 18, weight: .bold, design: .monospaced))
                .foregroundColor(.white)
                .padding(.horizontal, 40) // Adds padding to the left and right
                        .padding(.vertical, 15)   // Adds padding to the top and bottom
                .background(Color.blue)
                .cornerRadius(10)
                
    }
}

#Preview {

    ButtonComp(title: "log in") {
       print("button tap")
    }
}


struct CustomButton: View {

    var title: String
    var tapAction: () -> Void
    
    var body: some View {
        Button(action: tapAction) {
            Text(title)
                .padding()
                .background(Color.orange)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
    }
}

struct SecondScreen: View {
    @State private var buttonText = "Click Me" // Dynamic placeholder text
    
    var body: some View {
        VStack {
            CustomButton(title: buttonText) {
                buttonText = "Clicked!"
            }
        }
    }
}
