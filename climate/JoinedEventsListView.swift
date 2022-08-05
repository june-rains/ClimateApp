//
//  JoinedEventsListView.swift
//  climate
//
//  Created by 李昌昊 on 2022/7/8.
//

import SwiftUI

struct JoinedEventsListView: View {
    
    var list: Events
    var body: some View {
        
        NavigationView{
        ScrollView{
            
            ForEach(list.events){
 event in
            
            NavigationLink{
                FeedBackDetailView(_date: event.start_timestamp ?? "", _time: event.end_timestamp ?? "", _location: Array(event.location ?? [:])[0].value, _title: event.summary ?? "", _description: event.description ?? "", _image: event.image ?? "", _id: event.id)
            }label:{
                OneEventListView(image: event.image ?? "", name: event.summary ?? "", date: event.start_timestamp ?? "", time: event.end_timestamp ?? "", location: Array(event.location ?? [:])[0].value)
            }
            }
        }
        }
    }
}


