//
//  OneEventListRow.swift
//  climate
//
//  Created by 邢苏川 on 6/7/22.
//

import SwiftUI

struct OneEventListRow: View {
    var image: Image
    var text: String
    
    var body: some View {
        HStack{
            image
                .resizable()
                .frame(width: 20, height: 20)
            Text(text)
                .font(.custom("Georgia", size: 10))
//                .lineLimit(1)
            
            Spacer()
            
            
        }
    }
}

struct OneEventListRow_Previews: PreviewProvider {
    static var previews: some View {
        OneEventListRow(image: Image("location"), text: "Signature Theater Virtual Event")
    }
}
