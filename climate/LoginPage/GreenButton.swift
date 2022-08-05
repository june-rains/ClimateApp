//
//  GreenButton.swift
//  climate
//
//  Created by 邢苏川 on 6/10/22.
//

import SwiftUI

struct GreenButton: View {
    var action: String
    
    var body: some View {
        HStack(spacing: 8) {
//                Ellipse()
//                .fill(Color(red: 0.50, green: 0.23, blue: 0.27, opacity: 0.50))
//                .frame(width: 42, height: 42)
                

                Text(action)
                .font(.title)
                .multilineTextAlignment(.center)
                .frame(width: 213, height: 26)
                .foregroundColor(.white)
                .offset(x:  10)
        }
        .padding(.vertical, 5)
        .padding(.leading, 6)
        .padding(.trailing, 26)
        .frame(width: 295, height: 52)
        .background(Color(red: 0.09, green: 0.73, blue: 0.24))
        .cornerRadius(16)
    }
}

struct GreenButton_Previews: PreviewProvider {
    static var previews: some View {
        GreenButton(action: "Join")
    }
}
