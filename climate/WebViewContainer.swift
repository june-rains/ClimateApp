//
//  WebViewContainer.swift
//  ViewChange
//
//  Created by mac on 2022/12/5.
//

import SwiftUI

struct WebViewContainer: View {
    var body: some View {
        var url = URL(string: "http://vcm-29657.vm.duke.edu:8090/continue")!
        
        NewWebView(url: url)
    }
}

struct WebViewContainer_Previews: PreviewProvider {
    static var previews: some View {
        WebViewContainer()
    }
}
