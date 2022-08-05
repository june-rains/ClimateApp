//
//  UserHomeView.swift
//  climate
//
//  Created by 邢苏川 on 6/7/22.
//

import SwiftUI

struct UserHomeView: View {
    @State private var showWebView1 = false
    @State private var showWebView2 = false
    @State private var showWebView3 = false
    @State private var showWebView4 = false
    @State private var showWebView5 = false
    
    
    @ObservedObject var model = ViewModel()
    
    var body: some View {
        VStack(spacing: 23.62) {
                  

                    HStack {
                        Image("duke_wordmark_navyblue_012169")
                            .resizable(capInsets: EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)).aspectRatio(contentMode: .fit)
                            .frame(width: 250, height: 250)
                            .offset(x: -30)
                        
                        Text("Event Helper")
                        .fontWeight(.bold)
                        .font(.title)
                        .frame(width: 182, height: 34, alignment: .topLeading)
                        .offset(x: -90, y: 5)
                        
                    }
                    .padding()
                    
                    
                    
                    HStack{
                        
                        Spacer()
                        
                        Text("Changhao Li")
                            .font(.subheadline)
                            .frame(width: 125, height: 21,  alignment: .topLeading)
                            .offset(x: 20)
                        
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .offset(y: -130)

            
            
                
                    Button {
                        showWebView1.toggle()
                    } label: {
                        UserHomePageButton(image: Image("calendar"), text: "Event Catalog")
                            .offset(y: -50)
                    }
                    .sheet(isPresented: $showWebView1) {
                        EventListView(list: model.events)
                    }
                    
                    Button {
                        showWebView2.toggle()
                    } label: {
                    }
                    Link(destination: URL(string: "https://admin.calendar.duke.edu/eventsubmit/")!, label: {
                        UserHomePageButton(image: Image("addButton"), text: "Create Event")
                            .offset(y: -50)
            })
                    
            
                    
            
                    Button {
                        showWebView3.toggle()
                    } label: {
                        UserHomePageButton(image: Image("cameraButton"), text: "Scan QR Code to Check In ")
                            .offset(y: -50)
                    }
                    .sheet(isPresented: $showWebView3) {
                        ScanView()
                    }
                   
                
                Button {
                    showWebView4.toggle()
                } label: {
                    UserHomePageButton(image: Image("humanButton"), text: "Manage My Events")
                        .offset(y: -50)
                }
                .sheet(isPresented: $showWebView4) {
                    ManageEventsView()
                }
                  
                   
                    Button {
                        showWebView5.toggle()
                    } label: {
                        UserHomePageButton(image: Image("reportButton"), text: "Report Overall Well-Being")
                            .offset(y: -50)
                    }
                    .sheet(isPresented: $showWebView5) {
                        reportView()
                    }
                  

                    
                }
                .frame(width: 375, height: 812)
                .background(Color.white)
                .offset(y: -70)
            }
        
}

struct UserHomeView_Previews: PreviewProvider {
    static var previews: some View {
        UserHomeView()
    }
}
