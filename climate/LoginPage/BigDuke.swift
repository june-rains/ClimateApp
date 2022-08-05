//
//  BigDuke.swift
//  climate
//
//  Created by 邢苏川 on 6/6/22.
//

import SwiftUI

struct BigDuke: View {
    
    var body: some View {
        Image("duke_wordmark_navyblue_012169")
            .resizable(capInsets: EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)).aspectRatio(contentMode: .fit)
            .frame(width: 800, height: 800)
            .offset(y:-160)
            .padding(.bottom, -130)
    }
}

struct BigDuke_Previews: PreviewProvider {
    static var previews: some View {
        BigDuke()
    }
}
