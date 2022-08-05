//
//  reportView.swift
//  climate
//
//  Created by 李昌昊 on 2022/7/5.
//

import SwiftUI

struct reportView: View {
    
    @ObservedObject var model = ReportModel()
        
    
    init() {
        model.data()
    }
    
    
    
    var body: some View {
        VStack{
            ForEach(Array(((model.questionList ?? []).enumerated())), id: \.element) { index, item in
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
                model.updateAns()
            }, label: {
                Text("Submit")
            }).padding()
            
                
    
            
            
        }


    }
}


