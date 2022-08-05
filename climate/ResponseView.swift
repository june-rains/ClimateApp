//
//  ResponseView.swift
//  climate
//
//  Created by 李昌昊 on 2022/7/5.
//

import SwiftUI

struct ResponseView: View {
    var id: String
    
    @ObservedObject var model = ViewModel()
        
    
    init(_id: String) {
        self.id = _id
        model.data(_id: _id)

    }
    
    
    
    var body: some View {
        VStack{
            ForEach(Array(((model.event.feedBack ?? []).enumerated())), id: \.element) { index, item in
                HStack {
                    Text(item)
                    Spacer()
                }
                
                Divider()
                VStack(spacing:5){
                    TextField("Answer", text: self.model.binding(for: "cl580")[index])
                }
            }
               
            
            Button(action: {
                model.updateAns(_id: id)
            }, label: {
                Text("Update")
            }).padding()
            
                
    
            
            
        }


    }
}


