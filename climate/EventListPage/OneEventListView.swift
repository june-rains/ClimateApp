//
//  OneEventListView.swift
//  climate
//
//  Created by 邢苏川 on 6/7/22.
//

import SwiftUI

struct OneEventListView: View {
    
    var image: String
    var name: String
    var date: String
    var time: String
    var location: String
    func convert(str:String) -> String{
        let newFormatter = ISO8601DateFormatter()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM dd yyyy h:mm a"
        guard let date = newFormatter.date(from: str) else { return "" }
        return dateFormatter.string(from: date)
    }
        
        var body: some View {
            HStack(spacing: 21) {
//                image
//                    .resizable()
//                    .frame(width: 161, height: 128)
                ZStack {   // <--- here
                    AsyncImage(url: URL(string: image), scale: 2) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                    } placeholder: { ProgressView().progressViewStyle(.circular) }
                }
                .frame(width: 161, height: 128)
                
                VStack{
                    Text(name)
                        .multilineTextAlignment(.leading)
                        .font(.custom("Georgia", size: 15))
                        
                    OneEventListRow(image: Image("calendar"),text:  self.convert(str: date))
                    OneEventListRow(image: Image("location"), text: location)
                    OneEventListRow(image: Image("time"), text: self.convert(str: date) + "---" +  self.convert(str: time))
                    
                }
                
            }
            .padding(.vertical, 20)
            .padding(.leading, 10)
            .padding(.trailing, 10)
            .frame(width: 345, height: 150)
            .background(Color(red: 0.95, green: 0.95, blue: 0.95, opacity: 1))
            .shadow(radius: 2, y: 3)
        
    }
}

struct OneEventListView_Previews: PreviewProvider {
    static var previews: some View {
        OneEventListView(image: "https://calendar.duke.edu/images//2022/20220616/2007ed51c8bca3c32b90b51a82d700e2-CR-Jackie Brown film still_20220614075447PM.jpeg", name: "University Worship", date: "Mon, May 23, 2022", time: "7:30 pm - 8:30 pm", location: "Signature Theater Virtual Event")
    }
}
