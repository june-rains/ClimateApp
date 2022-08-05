//
//  LoginView.swift
//  climate
//
//  Created by 邢苏川 on 6/6/22.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        
        VStack(spacing:23) {
            

            
            BigDuke()

            
            
                
            
           
                LoginButton(loginMethod: "Log in with Netid")
                    .offset(y:-200)
                    .padding(.bottom, -130)
            
            
            
            LoginButton(loginMethod: "DEIC Log in")
                .offset(y:-150)
                .padding(.bottom, -130)
            
           
            
            
        }
        .frame(width: 375, height: 812)
        .background(Color.white)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
