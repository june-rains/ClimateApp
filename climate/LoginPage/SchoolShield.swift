//
//  SchoolShield.swift
//  climate
//
//  Created by 邢苏川 on 6/6/22.
//

import SwiftUI

struct SchoolShield: View {
    var body: some View {
        Image("shield")
            .resizable()
            .frame(width: 42, height: 42)
            .clipShape(Circle())
            .overlay{
            Circle().stroke(.white, lineWidth: 1)
            }
            .shadow(radius: 1)
    }
}

struct SchoolShield_Previews: PreviewProvider {
    static var previews: some View {
        SchoolShield()
    }
}
