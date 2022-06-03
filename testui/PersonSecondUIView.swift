//
//  PersonSecondUIView.swift
//  testui
//
//  Created by 李昌昊 on 2022/6/3.
//

import SwiftUI

struct PersonSecondUIView: View {
    var body: some View {
        VStack(spacing: 23.62) {
            ZStack {
                Text("Event Helper")
                .fontWeight(.bold)
                .font(.title)
                .frame(width: 182, height: 34, alignment: .topLeading)
                .offset(x: 90.50, y: 7.50)

                VStack(spacing: 4) {
                        Rectangle()
                        .fill(Color(red: 0, green: 0.19, blue: 0.53))
                        .frame(width: 30, height: 4)

                        Rectangle()
                        .fill(Color(red: 0, green: 0.19, blue: 0.53))
                        .frame(width: 30, height: 4)

                        Rectangle()
                        .fill(Color(red: 0, green: 0.19, blue: 0.53))
                        .frame(width: 30, height: 4)
                }
                .offset(x: 219.50, y: 6.50)
                .frame(width: 30, height: 20)

                Rectangle()
                .fill(Color(red: 0.50, green: 0.23, blue: 0.27, opacity: 0.50))
                .offset(x: -67, y: 0)
                .frame(width: 191, height: 129)
            }
            .frame(maxWidth: .infinity, maxHeight: 129)

            Text("Changhao Li")
            .font(.caption2)
            .frame(width: 125, height: 21, alignment: .topLeading)

            HStack(spacing: 21) {
                    RoundedRectangle(cornerRadius: 8)
                    .fill(Color(red: 0.50, green: 0.23, blue: 0.27, opacity: 0.50))
                    .frame(width: 40, height: 40)

                    Text("Events Catalog")
                    .font(.callout)
            }
            .padding(.vertical, 20)
            .padding(.leading, 19)
            .padding(.trailing, 158)
            .frame(width: 345, height: 80)
            .background(Color(red: 0.96, green: 0.96, blue: 0.96, opacity: 0.70))
            .shadow(radius: 4, y: 4)

            HStack(spacing: 20) {
                    RoundedRectangle(cornerRadius: 8)
                    .fill(Color(red: 0.50, green: 0.23, blue: 0.27, opacity: 0.50))
                    .frame(width: 40, height: 40)

                    Text("Create Event")
                    .font(.callout)
            }
            .padding(.leading, 19)
            .padding(.trailing, 176)
            .padding(.top, 18)
            .padding(.bottom, 22)
            .frame(width: 345, height: 80)
            .background(Color(red: 0.96, green: 0.96, blue: 0.96, opacity: 0.70))
            .shadow(radius: 4, y: 4)

            HStack(spacing: 21) {
                    RoundedRectangle(cornerRadius: 8)
                    .fill(Color(red: 0.50, green: 0.23, blue: 0.27, opacity: 0.50))
                    .frame(width: 40, height: 40)

                    Text("Scan QR Code to Check In")
                    .font(.callout)
            }
            .padding(.leading, 19)
            .padding(.trailing, 80)
            .padding(.top, 18)
            .padding(.bottom, 22)
            .frame(width: 345, height: 80)
            .background(Color(red: 0.96, green: 0.96, blue: 0.96, opacity: 0.70))
            .shadow(radius: 4, y: 4)

            HStack(spacing: 17) {
                    RoundedRectangle(cornerRadius: 8)
                    .fill(Color(red: 0.26, green: 0.53, blue: 0.92))
                    .frame(width: 40, height: 37.79)

                    Text("Manage My Events")
                    .font(.callout)
            }
            .padding(.leading, 19)
            .padding(.trailing, 134)
            .padding(.top, 22)
            .padding(.bottom, 20)
            .frame(width: 345, height: 80)
            .background(Color(red: 0.96, green: 0.96, blue: 0.96, opacity: 0.70))
            .shadow(radius: 4, y: 4)

            HStack(spacing: 19) {
                    RoundedRectangle(cornerRadius: 8)
                    .fill(Color.black)
                    .frame(width: 35, height: 40)

                    Text("Report Overall Well-Being")
                    .font(.callout)
            }
            .padding(.leading, 22)
            .padding(.trailing, 90)
            .padding(.top, 18)
            .padding(.bottom, 22)
            .frame(width: 345, height: 80)
            .background(Color(red: 0.96, green: 0.96, blue: 0.96, opacity: 0.70))
            .shadow(radius: 4, y: 4)

           
        }
        .frame(width: 375, height: 812)
        .background(Color.white)
    }
}

struct PersonSecondUIView_Previews: PreviewProvider {
    static var previews: some View {
        PersonSecondUIView()
    }
}
