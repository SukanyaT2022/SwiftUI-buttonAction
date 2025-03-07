//
//  ContentView.swift
//  swiftUIBasicBtn
//
//  Created by TS2 on 2/25/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
            //button action label
            Button(action:{
                //execute here
            }, label: {
                Image("s1")
                    .resizable()
                    .aspectRatio(contentMode:.fit)
                    .frame(height: 200)
            })
            
            //short hand button aciton label-hit enter at void-it give short hand
            Button {
                //execute here
            } label: {
                Image(systemName: "square.and.arrow.up")
                Text("Upload!")
                
            }
            .buttonStyle(.borderedProminent)
//            .font(Font.system(size: 30))
            .font(.largeTitle)
            //change text color
            .foregroundStyle(.black)
            .bold()
            
            //add accesability label or hint
            .accessibilityLabel("next screen")
            .accessibilityHint("next screen")
            
            //button action
            Button("click me!", action: {
                //code execute
            })
            .buttonStyle(.automatic)
            
            //short hand
            Button("go to second screen btn") {
                goToSecondScreenView()
            }
            .buttonStyle(.borderedProminent)
            .tint(.green)
            
            Spacer()
        }
    }
    
    func goToSecondScreenView() {
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
           let window = windowScene.windows.first {
            window.rootViewController = UIHostingController(rootView: SecondScreenView())
            window.makeKeyAndVisible()
        }
    }
}

#Preview {
    ContentView()
}
