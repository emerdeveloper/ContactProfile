//
//  InfoView.swift
//  ContactProfile
//
//  Created by Emerson Javid Gonzalez Morales on 7/07/20.
//  Copyright © 2020 Emerson Javid Gonzalez Morales. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    
    let iconName: String
    let text: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName: iconName)
                    .foregroundColor(Color(UIColor(red: 0.11, green: 0.21, blue: 0.34, alpha: 1.00)))
                Text(text)
                    .font(.system(size: 20))
            })
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(iconName: "phone.fill", text: "Hello World!")
            .previewLayout(.sizeThatFits)
    }
}
