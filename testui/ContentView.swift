//
//  ContentView.swift
//  testui
//
//  Created by 李昌昊 on 2022/6/3.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack(spacing: 30) {
                
                Image("duke_wordmark_navyblue_012169").resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0)).aspectRatio(contentMode: .fit)
                
                HStack(spacing: 8) {
                        
                        Ellipse()
                        .fill(Color(red: 0.50, green: 0.23, blue: 0.27, opacity: 0))
                        .frame(width: 42, height: 42)
                        
                        Text("Log in with Netid")
                        .font(.title3)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 213, height: 26, alignment: .top)
                }
                .padding(.vertical, 5)
                .padding(.leading, 6)
                .padding(.trailing, 26)
                .frame(width: 295, height: 52)
                .background(Color(red: 0, green: 0.19, blue: 0.53))
                .cornerRadius(16)

                HStack(spacing: 8) {
                        Ellipse()
                        .fill(Color(red: 0.50, green: 0.23, blue: 0.27, opacity: 0))
                        .frame(width: 42, height: 42)
                    NavigationLink(
                        destination: PersonSecondUIView(),
                        label: {

                            Text("DEIC Log in")
                            .font(.title3)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .frame(width: 213, height: 26, alignment: .top)

                        })
                        
                }
                .padding(.vertical, 5)
                .padding(.leading, 6)
                .padding(.trailing, 26)
                .frame(width: 295, height: 52)
                .background(Color(red: 0, green: 0.19, blue: 0.53))
                .cornerRadius(16)
            }
        }
      
        .padding(.leading, 7)
        .padding(.trailing, 8)
        .padding(.top, 60)
        .padding(.bottom, 170)
        .frame(width: 375, height: 812)
        .background(Color.white)
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
