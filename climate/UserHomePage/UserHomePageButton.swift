//
//  UserHomePageButton.swift
//  climate
//
//  Created by 邢苏川 on 6/7/22.
//

import SwiftUI

struct UserHomePageButton: View {
    var image: Image
    var text: String
    
    var body: some View {
        HStack(spacing: 21) {
            image
                .resizable()
                .frame(width: 40, height: 40)
                    
            Text(text)
            
        }
        .padding(.vertical, 20)
        .padding(.leading, 19)
        .padding(.trailing, 158)
        .frame(width: 345, height: 80)
        .background(Color(red: 0.95, green: 0.95, blue: 0.95, opacity: 1))
        .shadow(radius: 2, y: 3)
        
    }
}

struct UserHomePageButton_Previews: PreviewProvider {
    static var previews: some View {
        UserHomePageButton(image: Image("calendar"), text: "Events Catalog")
    }
}
