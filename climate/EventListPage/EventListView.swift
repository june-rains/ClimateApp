//
//  EventListView.swift
//  climate
//
//  Created by 邢苏川 on 6/7/22.
//

import SwiftUI



struct EventListView: View {
    
    var list: Events
    var body: some View {
        
        NavigationView{
        ScrollView{
            
            ForEach(list.events){
 event in
            
            NavigationLink{
                EventDetailView(_date: event.start_timestamp ?? "", _time: event.end_timestamp ?? "", _location: Array(event.location ?? [:])[0].value, _title: event.summary ?? "", _description: event.description ?? "", _image: event.image ?? "", _id: event.id)
            }label:{
                OneEventListView(image: event.image ?? "", name: event.summary ?? "", date: event.start_timestamp ?? "", time: event.end_timestamp ?? "", location: Array(event.location ?? [:])[0].value)
            }
            }
            
            

           
        }
        }
    }
}

struct EventListView_Previews: PreviewProvider {
    static var previews: some View {
        EventListView(list: events)
    }
}
