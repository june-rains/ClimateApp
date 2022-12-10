//
//  FeedBackDetailView.swift
//  climate
//
//  Created by 李昌昊 on 2022/7/1.
//

import SwiftUI

struct FeedBackDetailView: View {
    var date: String
    var time: String
    var location: String
    var title: String
    var description: String
    var image: String
    var id: String
    @State private var useRedText = false
    @State private var showWebView1 = false

    @ObservedObject var model = ViewModel()
    
    
    func convert(str:String) -> String{
        let newFormatter = ISO8601DateFormatter()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM dd yyyy h:mm a"
        guard let date = newFormatter.date(from: str) else { return "" }
        return dateFormatter.string(from: date)
    }
    
    init(_date: String, _time: String, _location: String, _title: String, _description: String, _image: String, _id: String){
                self.id = _id
                self.date = _date
                self.location = _location
                self.time = _time
                self.image = _image
                self.description = _description
                self.title = _title
                model.getUserRecord(_id: _id)
            }
    
    
    
    
    var body: some View {
        ScrollView{
            ZStack {
                // <--- here
                AsyncImage(url: URL(string: image), scale: 2) { image in
                    image
                        .resizable()
                        .scaledToFill()
                        .clipped()
//                        .aspectRatio(contentMode: .fill)
                } placeholder: { ProgressView().progressViewStyle(.circular) }
            }
            .frame(width: 300, height: 200)
            
            
            VStack(alignment: .leading) {
                HStack{
                    Text(title)
                        .font(.title)
                }
                    
            
                Divider()
                
                
                OneEventListRow(image: Image("calendar"), text: self.convert(str: date))
                OneEventListRow(image: Image("location"), text: location)
                OneEventListRow(image: Image("time"), text: self.convert(str: date) + "---" +  self.convert(str: time))
                
                
                Divider()
                
                
                Text(title)
                    .font(.title2)
                
                
                    if model.userRecord[NetID] != nil {
                        if model.userRecord[NetID] == "joined" {
                            let image = model.generateQRCode(from: id)
                            HStack{
                                Image(uiImage: image ?? UIImage()).resizable()
                                    .frame(width: 200, height: 200).offset(x: 75, y: 0)
                            }
                            
                        }

                    }
                
               
                
                
                Text(description)
                
                Button(action: {showWebView1.toggle()}) {
                        Text("Edit FeedBack")
                            .frame(width: 295, height: 52, alignment: .center)
                    }.padding(.vertical, 5)
                        .padding(.leading, 6)
                        .padding(.trailing, 26)
                        .frame(width: 295, height: 52)
                        .background(Color(red: 0.09, green: 0.73, blue: 0.24))
                        .cornerRadius(16)
                        .foregroundColor(.white)
                        .offset(x:25, y:20)
                        .sheet(isPresented: $showWebView1) {
                            createFeedBackView(_id: id)
                        }
                
        }
            .padding()
        }
        .navigationTitle("Event Information")
        .navigationBarTitleDisplayMode(.inline)
    }
}



