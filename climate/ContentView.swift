//
//  ContentView.swift
//  ViewChange
//
//  Created by mac on 2022/12/5.
//

import SwiftUI


import Combine
class AppState: ObservableObject {
    @Published var num: Int = 0
}

var myflag: Bool = false
struct ContentView: View {
    @StateObject private var appState = AppState()
    @State var isScreen1Active: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                //Text("Main Screen")
                //Text("NUM: \(appState.num)")
                WebViewContainer()
                
                NavigationLink(destination: UserHomeView(), isActive: $isScreen1Active) {
                }
            }
        }
        .onAppear() {
            print("Main Screen | onAppear")
            //self.isScreen1Active = true
            
            
            for i in 1...100{
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5*Double(i)) {
                    //self.isScreen1Active = true
                    if myflag {
                        self.isScreen1Active = true
                    }
                    //self.appState.num = 1
                }
            }
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 5) {
                //self.isScreen1Active = true
                
                //self.appState.num = 1
            }
            
            
            
            
        }
        .onReceive(self.appState.$num, perform: { num in
            print("Main Screen: \(num) | onReceive")
        }
        )
        .onChange(of: self.isScreen1Active, perform: {num in
            print("Main Screen: \(num) | onChange")
        }
        )
        .navigationBarTitle("Navigation Testing", displayMode: .inline)
    }
}


struct Screen1: View {
    @StateObject private var appState = AppState()
    
    var body: some View {
        VStack {
            Text("Screen 1")
            Text("NUM: \(appState.num)")
            
            Button(action: {
                self.appState.num = 1
            }) {
                Text("Change Num to 1")
            }
            
            NavigationLink(destination: Screen2()) {
                Text("Screen 2")
                .bold()
            }
        }
    }
}


struct Screen2: View {
    @StateObject private var appState = AppState()
    
    var body: some View {
        VStack {
            Text("Screen 2")
            Text("NUM: \(appState.num)")
            
            Button(action: {
                self.appState.num = 2
            }) {
                Text("Change Num to 2")
            }
        }
        .onAppear() {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
                self.appState.num = 100
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
