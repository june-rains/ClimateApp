//
//  ActivityDetail.swift
//  testui
//
//  Created by 张傲华 on 6/3/22.
//

import SwiftUI

struct ActivityDetail: View {
    var body: some View {
        ScrollView{
            VStack(spacing: 24.20) {
                Group {
                    VStack(spacing: 9229.12) {
                        VStack(spacing: 9.99) {
                            Rectangle()
                                .fill(Color.white).rotationEffect(.degrees(-133.43))
                                .frame(maxWidth: .infinity, maxHeight: 3)
                                .border(Color.white, width: 2)
                            
                            Rectangle()
                                .fill(Color.white).rotationEffect(.degrees(136.59))
                                .frame(maxWidth: .infinity, maxHeight: 3)
                                .border(Color.white, width: 2)
                        }.rotationEffect(.degrees(-5.25))
                            .padding(.leading, 1)
                            .padding(.top, 1)
                            .padding(.bottom, 10)
                            .frame(width: 19.82, height: 22.88)
                        
                        HStack(alignment: .top, spacing: 34) {
                            Text("9:41")
                                .fontWeight(.semibold)
                                .font(.subheadline)
                                .multilineTextAlignment(.center)
                                .frame(width: 54, alignment: .top)
                                .padding(.top, 1)
                                .frame(width: 54, height: 17)
                            
                            Text("Event Information")
                                .fontWeight(.bold)
                                .font(.title)
                            
                            HStack(spacing: 1) {
                                RoundedRectangle(cornerRadius: 1.33)
                                    .fill(Color.white)
                                    .frame(width: 18, height: 7.33)
                                    .padding(2)
                                    .frame(width: 22, height: 11.33)
                                    .cornerRadius(2.67)
                                    .overlay(RoundedRectangle(cornerRadius: 2.67).stroke(Color.white, lineWidth: 1))
                                
                                RoundedRectangle(cornerRadius: 8)
                                    .fill(Color.white)
                                    .opacity(0.40)
                                    .frame(width: 1.33, height: 4)
                            }
                            .frame(width: 24.33, height: 11.33)
                        }
                        .padding(.leading, 21)
                        .padding(.trailing, 15)
                        .padding(.top, 15)
                        .padding(.bottom, 13)
                        .frame(width: 375, height: 85)
                        .background(Color(red: 0, green: 0.19, blue: 0.53))
                    }
                    .frame(width: 375, height: 44)
                    .background(Color(red: 0.02, green: 0.51, blue: 0.78))
                    
                    Text("SigSpace: Trying to Find Chinatown")
                        .fontWeight(.semibold)
                        .font(.title3)
                        .frame(width: 346, height: 22, alignment: .topLeading)
                    
                    Rectangle()
                        .frame(width: 355, height: 1)
                    
                    Rectangle()
                        .fill(Color(red: 0.50, green: 0.23, blue: 0.27, opacity: 0.50))
                        .frame(width: 320.21, height: 203.95)
                        .padding(13)
                        .frame(width: 346, height: 229)
                        .background(Color.white)
                        .border(Color.black, width: 1)
                        .frame(width: 346, height: 229)
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color(red: 0.50, green: 0.23, blue: 0.27, opacity: 0.50))
                            .offset(x: -174.79, y: -491.38)
                            .frame(width: 29.41, height: 29.20)
                        
                        Text("Mon, May 23, 2022")
                            .font(.callout)
                            .frame(width: 184.32, height: 17.52, alignment: .topLeading)
                            .offset(x: -45.37, y: -491.38)
                        
                        Text("Signature Theater Virtual Event")
                            .font(.callout)
                            .frame(width: 299.04, height: 16.55, alignment: .topLeading)
                            .offset(x: 11.98, y: -451.96)
                        
                        Text("7:30 pm - 8:30 pm")
                            .font(.callout)
                            .frame(width: 184.32, height: 16.55, alignment: .topLeading)
                            .offset(x: -45.34, y: -410.71)
                        
                        Text("Esther Kim Lee, Jeff Liu & David Henry Hwang")
                            .font(.callout)
                            .frame(width: 258.84, height: 37.96, alignment: .topLeading)
                            .offset(x: -8.08, y: -367)
                        
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color(red: 0.50, green: 0.23, blue: 0.27, opacity: 0.50))
                            .offset(x: -174.79, y: -448.55)
                            .frame(width: 29.41, height: 29.20)
                        
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color(red: 0.50, green: 0.23, blue: 0.27, opacity: 0.50))
                            .offset(x: -174.79, y: -405.73)
                            .frame(width: 29.41, height: 29.20)
                        
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color(red: 0.50, green: 0.23, blue: 0.27, opacity: 0.50))
                            .offset(x: -174.50, y: -364.37)
                            .frame(width: 30, height: 27.22)
                    }
                    .frame(width: 351, height: 157.96)
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color(red: 0.12, green: 0.71, blue: 0.95))
                            .offset(x: -76, y: -8)
                            .frame(width: 145, height: 9)
                        
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color(red: 0.85, green: 0.85, blue: 0.85))
                            .offset(x: 69, y: -8)
                            .frame(width: 145, height: 9)
                        
                        ZStack {
                            Ellipse()
                                .fill(Color.white)
                                .offset(x: 2, y: 0)
                                .frame(width: 20, height: 20)
                            
                            RoundedRectangle(cornerRadius: 8)
                                .fill(Color(red: 0.09, green: 0.73, blue: 0.24))
                                .offset(x: 2, y: 0)
                                .frame(width: 20, height: 20)
                        }
                        .offset(x: -3.50, y: -8.50)
                        .frame(width: 16, height: 20)
                        
                        ZStack {
                            Ellipse()
                                .fill(Color.white)
                                .frame(width: 20, height: 20)
                            
                            RoundedRectangle(cornerRadius: 8)
                                .fill(Color(red: 0.66, green: 0.66, blue: 0.66))
                                .frame(width: 20, height: 20)
                        }
                        .offset(x: 140.50, y: -8.50)
                        .frame(width: 18, height: 20)
                        
                        ZStack {
                            Ellipse()
                                .fill(Color.white)
                                .frame(width: 20, height: 20)
                            
                            RoundedRectangle(cornerRadius: 8)
                                .fill(Color(red: 0.09, green: 0.73, blue: 0.24))
                                .frame(width: 20, height: 20)
                        }
                        .offset(x: -147.50, y: -8.50)
                        .frame(width: 18, height: 20)
                        
                        Text("upcoming")
                            .fontWeight(.medium)
                            .font(.caption2)
                            .frame(width: 60, height: 11, alignment: .topLeading)
                            .offset(x: -138.50, y: 13)
                        
                        Text("progressing")
                            .fontWeight(.medium)
                            .font(.caption2)
                            .frame(width: 55, height: 11, alignment: .topLeading)
                            .offset(x: -2, y: 13)
                        
                        Text("finished")
                            .fontWeight(.medium)
                            .font(.caption2)
                            .multilineTextAlignment(.center)
                            .frame(width: 55, height: 11, alignment: .top)
                            .offset(x: 141, y: 11)
                    }
                    .frame(width: 337, height: 37)
                    
                    Text("Tune in for the world premiere virtual screening of David Henry Hwang's short film Trying to Find Chinatown directed by Jeff Liu, an adaptation of Hwang's play of the same title. Followed by a discussion with writer and director, moderated by Dr. Esther Kim Lee (Professor of Theater Studies at Duke University.\n\nAbout the Film\n\nAdapted from the play Trying to Find Chinatown, this short film directed by Jeff Liu is an exploration of racial identity and appearance, revolves around the interaction between an Asian street musician and a Caucasian man who claims Asian American heritage.\n\n\"David Henry Hwang is a true original. A native of Los Angeles, born to immigrant parents, he has one foot on each side of a cultural divide. By at once bringing West and East into conflict and unity, this playwright has found the perfect means to dramatize both the pain and humor of the immigrant experience.\" -Frank Rich, New York Times")
                        .frame(width: 355, height: 467, alignment: .topLeading)
                    
                    Text("Joined")
                        .fontWeight(.medium)
                        .font(.title)
                        .padding(.leading, 148)
                        .padding(.trailing, 134)
                        .padding(.top, 17)
                        .padding(.bottom, 12)
                        .frame(width: 355, height: 57)
                        .background(Color(red: 0.73, green: 0.76, blue: 0.74))
                        .cornerRadius(6)
                    
                    Text("Cancel")
                        .fontWeight(.medium)
                        .font(.title)
                        .padding(.leading, 148)
                        .padding(.trailing, 133)
                        .padding(.top, 15)
                        .padding(.bottom, 14)
                        .frame(width: 355, height: 57)
                        .background(Color(red: 1, green: 0.14, blue: 0.14))
                        .cornerRadius(6)
                    
                    Text("Check In")
                        .fontWeight(.medium)
                        .font(.title)
                        .padding(.leading, 140)
                        .padding(.trailing, 121)
                        .padding(.top, 15)
                        .padding(.bottom, 14)
                        .frame(width: 355, height: 57)
                        .background(Color(red: 0.09, green: 0.73, blue: 0.24))
                        .cornerRadius(6)
                }
            }
            .frame(width: 375, height: 1405)
            .background(Color.white)
        }
    }
}

struct ActivityDetail_Previews: PreviewProvider {
    static var previews: some View {
        ActivityDetail()
    }
}
