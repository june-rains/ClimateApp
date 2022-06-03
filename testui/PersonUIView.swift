//
//  PersonUIView.swift
//  testui
//
//  Created by 李昌昊 on 2022/6/3.
//

import SwiftUI

struct PersonUIView: View {
    @State private var action: Int? = 0
    var body: some View {
        NavigationView(content: {
            NavigationLink(
                destination: PersonSecondUIView(),
                label: {

                    Text("Sign In")

                })
        })
        .navigationBarTitle(Text("Person"),displayMode: .inline)
    }
      
//
//                NavigationView {
//                    VStack {
//                        NavigationLink(destination: Text("Destination_1"), tag: 1, selection: $action) {
//                            EmptyView()
//                        }
//                        NavigationLink(destination: Text("Destination_2"), tag: 2, selection: $action) {
//                            EmptyView()
//                        }
//
//                        Text("Your Custom View 1")
//                            .onTapGesture {
//                                //perform some tasks if needed before opening Destination view
//                                self.action = 1
//                            }
//                        Text("Your Custom View 2")
//                            .onTapGesture {
//                                //perform some tasks if needed before opening Destination view
//                                self.action = 2
//                            }
//                    }
//                }
//            }
}
struct PersonUIView_Previews: PreviewProvider {
    static var previews: some View {
        PersonUIView()
    }
}

