//
//  LoginButton.swift
//  climate
//
//  Created by 邢苏川 on 6/6/22.
//

import SwiftUI

struct LoginButton: View {
    var loginMethod: String
    
    var body: some View {
        HStack(spacing: 8) {
//                Ellipse()
//                .fill(Color(red: 0.50, green: 0.23, blue: 0.27, opacity: 0.50))
//                .frame(width: 42, height: 42)
                SchoolShield()

                Text(loginMethod)
                .font(.title3)
                .multilineTextAlignment(.center)
                .frame(width: 213, height: 26, alignment: .top)
                .foregroundColor(.white)
        }
        .padding(.vertical, 5)
        .padding(.leading, 6)
        .padding(.trailing, 26)
        .frame(width: 295, height: 52)
        .background(Color(red: 0, green: 0.19, blue: 0.53))
        .cornerRadius(16)
    }
}

struct LoginButton_Previews: PreviewProvider {
    static var previews: some View {
        LoginButton(loginMethod: "nonono")
    }
}
