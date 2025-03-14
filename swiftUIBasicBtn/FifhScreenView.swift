//
//  FifhScreenView.swift
//  swiftUIBasicBtn
//
//  Created by TS2 on 3/10/25.
//

import SwiftUI

struct FifhScreenView: View {
    var logoImage:Image?
    var body: some View {
        NavigationStack{
            //if let use only inside block of code--short code
            // gauard let can aceess outside the block of code--long code ex. api call 
            VStack{
                if let logoImage = logoImage{
                    logoImage
                        .resizable()
                        .aspectRatio(contentMode:.fit)
                        .frame(width: 200, height: 200)
                        .clipShape(Circle())
                        .overlay(
                               RoundedRectangle(cornerRadius: 100)
                             
                                   .stroke(Color.blue, lineWidth: 4)
                           )
                        .shadow(radius: 20)
                    
                }else{
                    Image(systemName: "person.circle")
                }
               
                
                Text("Fifth Screen")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                ButtonComp(title: "go to 6 screen") {
                    if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
                       let window = windowScene.windows.first{
                        window.rootViewController = UIHostingController(rootView: SixScreenView())
                        window.makeKeyAndVisible()
                    }
                }
                
            }
        }
    }
}

#Preview {
    FifhScreenView()
}
