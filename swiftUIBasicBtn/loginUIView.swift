//
//  loginUIView.swift
//  swiftUIBasicBtn
//
//  Created by TS2 on 2/26/25.
//

import SwiftUI

struct loginUIView: View {
    @State var emailVar:String = ""
    @State var passwordVar:String = ""
    var body: some View {
        VStack{
            Image(systemName: "car")
                .resizable()
                .frame(width:50 ,height: 50)
            Text("On the Road")
                .font(.title)
                .foregroundColor(.blue)
                .bold()
            
            VStack(spacing: 20){
                TextFieldComp(valueTextfield: emailVar, placeHolder:"Email" )
                TextFieldComp(valueTextfield: passwordVar, placeHolder:"Passsword" )
            }
        }
    }
}

#Preview {
    loginUIView()
}
