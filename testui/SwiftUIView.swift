//
//  SwiftUIView.swift
//  testui
//
//  Created by 李昌昊 on 2022/6/3.
//

import SwiftUI

struct PersonUIView: View {
        var body: some View {
            NavigationView(content: {
                NavigationLink(
                    destination: PersonSecondUIView(),
                    label: {
                        MyCustomTitleText(text: "点我跳转到第二个画面")
                    })
            })
            .navigationBarTitle(Text("Person"),displayMode: .inline)
        }
    }
struct PersonUIView_Previews: PreviewProvider {
        static var previews: some View {
            PersonUIView()
        }
    }




