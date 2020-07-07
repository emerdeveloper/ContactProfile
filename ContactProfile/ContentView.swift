//
//  ContentView.swift
//  ContactProfile
//
//  Created by Emerson Javid Gonzalez Morales on 6/07/20.
//  Copyright © 2020 Emerson Javid Gonzalez Morales. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color(UIColor(red: 0.11, green: 0.21, blue: 0.34, alpha: 1.00))
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("picture")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 170, height: 170)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color(.white), lineWidth: 4))
                Text(" Emerson Javid ")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .foregroundColor(.white)
                    .bold()
                Text("iOS Developer")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                
                Divider()
                
                InfoView(iconName: "phone.fill", text: "+57 313 715 9111")
                InfoView(iconName: "envelope.fill", text: "emersonjavid97@gmail.com")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
