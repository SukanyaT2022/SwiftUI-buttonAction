//
//  SixScreenView.swift
//  swiftUIBasicBtn
//
//  Created by TS2 on 3/12/25.
//

import SwiftUI

struct SixScreenView: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("Sixth Screen")
                //                .font(.system(size: 80))
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.blue)//font color
                    .italic()
                    .underline()
                    .strikethrough()
                //not work
                    .multilineTextAlignment(.trailing)
                    .shadow(color: .gray, radius: 2, x: 1, y: 1)
                ButtonComp(title: "go to second screen") {
                    if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
                       let window = windowScene.windows.first{
                        window.rootViewController = UIHostingController(rootView: SecondScreenView())
                        window.makeKeyAndVisible()
                    }
                }
            }
            
        }
    }
    //question line 37 why not what diffrent
    

    
    
}
    #Preview {
        FourthScreenView()
    }
//struct SixScreenView_Previews: PreviewProvider {
//    static var previews: some View {
//        SixScreenView()
//    }
//}
//question 2
//NavigationLink(destination: SecondScreenView()) {
//    ButtonComp(title: "Go to second screen") {
//        print("Navigating to Second Screen") // Keeps logic inside SwiftUI
//    }
//}
