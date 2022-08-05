//
//  EventDetailView.swift
//  climate
//
//  Created by 邢苏川 on 6/10/22.
//

import SwiftUI
import Firebase



struct ScanDetailView: View {
    @ObservedObject var model = ViewModel()
    
    
    func convert(str:String) -> String{
        let newFormatter = ISO8601DateFormatter()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM dd yyyy h:mm a"
        guard let date = newFormatter.date(from: str) else { return "" }
        return dateFormatter.string(from: date)
    }
    
    init(_id: String){
        model.getUserRecord(_id: _id)
        model.data(_id: _id)
        }
    
    var body: some View {
        ScrollView{
            ZStack {
                // <--- here
                AsyncImage(url: URL(string: model.event.image ?? ""), scale: 2) { image in
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
                    Text(model.event.summary ?? "")
                        .font(.title)
                }
                    
            
                Divider()
                
                
                OneEventListRow(image: Image("calendar"), text: self.convert(str: model.event.start_timestamp ?? ""))
                OneEventListRow(image: Image("location"), text: model.event.location?["address"] ?? "")
                OneEventListRow(image: Image("time"), text: self.convert(str: model.event.start_timestamp ?? "") + "---" +  self.convert(str: model.event.end_timestamp ?? ""))
                
                
                Divider()
                
                
                Text(model.event.summary ?? "")
                    .font(.title2)
                
                
                    if model.userRecord["cl580"] != nil {
                        if model.userRecord["cl580"] == "joined" {
                            let image = model.generateQRCode(from: model.event.id)
                            HStack{
                                Image(uiImage: image).resizable()
                                    .frame(width: 200, height: 200).offset(x: 75, y: 0)
                            }
                            
                        }

                    }
                
               
                
                
                Text(model.event.description ?? "")
                
                
                
                if model.userRecord["cl580"] == nil {
                    Button(action: {model.join(_id: model.event.id )}) {
                        Text("Join")
                            .frame(width: 295, height: 52, alignment: .center)
                        
                    }.padding(.vertical, 5)
                        .padding(.leading, 6)
                        .padding(.trailing, 26)
                        .frame(width: 295, height: 52)
                        .background(Color(red: 0.09, green: 0.73, blue: 0.24))
                        .cornerRadius(16)
                        .foregroundColor(.white)
                        .offset(x:25, y:20)
                        } else {
                            if model.userRecord["cl580"] == "joined" {
                                Button(action: {}) {
                                    Text("Joined")
                                        .frame(width: 295, height: 52, alignment: .center)
                                    
                                }.padding(.vertical, 5)
                                    .padding(.leading, 6)
                                    .padding(.trailing, 26)
                                    .frame(width: 295, height: 52)
                                    .background(Color(red: 0.8, green: 0.8, blue: 0.8))
                                    .cornerRadius(16)
                                    .foregroundColor(.white)
                                    .offset(x:25, y:20)
                                Button(action: {model.cancel(_id: model.event.id)}) {
                                    Text("Cancel")
                                        .frame(width: 295, height: 52, alignment: .center)
                                    
                                }.padding(.vertical, 5)
                                    .padding(.leading, 6)
                                    .padding(.trailing, 26)
                                    .frame(width: 295, height: 52)
                                    .background(Color(red: 1, green: 0, blue: 0))
                                    .cornerRadius(16)
                                    .foregroundColor(.white)
                                    .offset(x:25, y:20)
                                Button(action: {model.check_in(_id: model.event.id)}) {
                                    Text("Check In")
                                        .frame(width: 295, height: 52, alignment: .center)
                                    
                                }.padding(.vertical, 5)
                                    .padding(.leading, 6)
                                    .padding(.trailing, 26)
                                    .frame(width: 295, height: 52)
                                    .background(Color(red: 0.09, green: 0.73, blue: 0.24))
                                    .cornerRadius(16)
                                    .foregroundColor(.white)
                                    .offset(x:25, y:20)
                            } else if model.userRecord["cl580"] == "checked_in" {
                                Button(action: {}) {
                                    Text("FeedBack")
                                        .frame(width: 295, height: 52, alignment: .center)
                                    
                                }.padding(.vertical, 5)
                                    .padding(.leading, 6)
                                    .padding(.trailing, 26)
                                    .frame(width: 295, height: 52)
                                    .background(Color(red: 0.09, green: 0.73, blue: 0.24))
                                    .cornerRadius(16)
                                    .foregroundColor(.white)
                                    .offset(x:25, y:20)
                            }
                            
                        }
                
            }
            .padding()
        }
        .navigationTitle("Event Information")
        .navigationBarTitleDisplayMode(.inline)
    }
}


