//
//  createFeedBackView.swift
//  climate
//
//  Created by 李昌昊 on 2022/7/1.
//

import SwiftUI

struct createFeedBackView: View {
    var id: String
    
    @ObservedObject var model = ViewModel()
    
    init(_id: String) {
        self.id = _id
        model.data(_id: _id)
    }
    
    @State var feedback = ""

    var body: some View {
        VStack{
            

            ForEach(model.event.feedBack ?? [], id: \.self) { item in
                HStack {
                    Text(item)
                    Spacer()
                    Button(action: {
                      model.deleteQuestion(feedback: item)
                    }, label: {
                        Image(systemName: "minus.circle")
                    }).buttonStyle(BorderlessButtonStyle())
                }
            }
               
            
                
               
            
                

            
            Divider()
            VStack(spacing:5){
                TextField("Question", text: $feedback).textFieldStyle(RoundedBorderTextFieldStyle())

                Button(action: {
                    //Call add data
                    model.addQuestion(feedback: feedback)

                    //clear the text fileds
                    feedback = ""

                }, label: {
                    Text("Add feedback question")
                }).padding()
            }
        }


    }
}

