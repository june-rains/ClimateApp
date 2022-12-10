//
//  ManageEventsView.swift
//  climate
//
//  Created by 李昌昊 on 2022/7/1.
//

import SwiftUI

struct ManageEventsView: View {
    @State private var showWebView1 = false
    @State private var showWebView2 = false
    @State private var showWebView3 = false
    @ObservedObject var model = ViewModel()
    
    var body: some View {
        
        
        VStack(spacing: 10){
        Link(destination: URL(string: "https://admin.calendar.duke.edu/eventsubmit/")!, label: {
                UserHomePageButton(image: Image("ownedEvents"), text: "Manage Owned Events")
                    .offset(y: -50)
    })
        
        
        Button {
            showWebView2.toggle()
        } label: {
            UserHomePageButton(image: Image("joinedEvents"), text: "Joined Events")
                .offset(y: -50)
        }
        .sheet(isPresented: $showWebView2) {
            JoinedEventsListView(list: model.joinedevents)
        }
        
        
        
        Button {
            showWebView3.toggle()
        } label: {
            UserHomePageButton(image: Image("feedback"), text: "My Event FeedBack")
                .offset(y: -50)
        }
        .sheet(isPresented: $showWebView3) {
            FeedbackListView(list:model.approvedevents)
        }
        
}
        
            
}

}
