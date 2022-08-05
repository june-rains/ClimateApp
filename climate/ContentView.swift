//
//  ContentView.swift
//  climate
//
//  Created by 邢苏川 on 6/6/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EventListView(list: events)
    }
}
