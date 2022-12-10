//
//  WebView.swift
//  ViewChange
//
//  Created by mac on 2022/12/5.
//

import SwiftUI
import WebKit


var Role : String = ""
var Name : String = ""
var NetID : String = ""

struct NewWebView: UIViewRepresentable {

    
    let url: URL
    let navigationHelper = WebViewHelper()
    
    func makeUIView(context: Context) -> WKWebView {
        let webview = WKWebView()
        webview.navigationDelegate = navigationHelper

        let request = URLRequest(url: self.url, cachePolicy: .returnCacheDataElseLoad)
        webview.load(request)

        return webview
    }

    func updateUIView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: self.url, cachePolicy: .returnCacheDataElseLoad)

        webView.load(request)
    }
    
    
//    func makeUIView(context: UIViewRepresentableContext<WebView>) -> WKWebView {
//        let webview = WKWebView()
//        webview.navigationDelegate = navigationHelper
//
//        let request = URLRequest(url: self.url, cachePolicy: .returnCacheDataElseLoad)
//        webview.load(request)
//
//        return webview
//    }
//
//
//
//    func updateUIView(_ webview: WKWebView, context: UIViewRepresentableContext<WebView>) {
//        let request = URLRequest(url: self.url, cachePolicy: .returnCacheDataElseLoad)
//
//        webview.load(request)
//    }
}

class WebViewHelper: NSObject, WKNavigationDelegate {
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        let ret = checkURL(webView)
        if ret == true {
            myflag = true
            print("true true true true true true true true true true true true ")
            webView.stopLoading()
            
            
        }
        print("webview didFinishNavigation")
    }
    
  
    
    
    func checkURL(_ webView: WKWebView)-> Bool {
//        let urlString = webView.url?.absoluteString
//        let sub = "role"
//        let range: Range = urlString!.range(of:"ttp")!
//        let location: Int = urlString!.distance(from: urlString!.startIndex, to: range.lowerBound)
//        print(location)
//
//        print("myurl is ************** \(urlString)")
        
        
       
        
        
        
        let s: String = webView.url!.absoluteString
        if s != nil {
            if s.contains("netID") {
                let range: Range = s.range(of:"netID?=")! //a
                let netid0: Int = s.distance(from: s.startIndex, to: range.upperBound)
                let range1: Range = s.range(of:"@duke.edu&&name?=")!
                let netid1: Int = s.distance(from: s.startIndex, to: range1.lowerBound)
                    

                let name0: Int = s.distance(from: s.startIndex, to: range1.upperBound)
                let range3: Range = s.range(of:"&&role?=")!
                let name1: Int = s.distance(from: s.startIndex, to: range3.lowerBound)


                let role0: Int = s.distance(from: s.startIndex, to: range3.upperBound)
                let range4: Range = s.range(of:"@duke.edu&&&")!
                let role1: Int = s.distance(from: s.startIndex, to: range4.lowerBound)

                let netid: Substring = s[range.upperBound..<range1.lowerBound]
                print(netid)

                //let frontTest_after: Substring = str[str.startIndex ..< str.index(after: range.lowerBound)]
                let name: Substring = s[range1.upperBound..<range3.lowerBound]
                let range5: Range = name.range(of:"%20")!
                let firstname: Substring = name[..<range5.lowerBound]
                let lastname: Substring = name[range5.upperBound..<name.endIndex]
                print(firstname)
                print(lastname)

                let role: Substring = s[range3.upperBound..<range4.lowerBound]
                print(role)
                Role = String (role)
                Name = String (firstname) + " " + String (lastname)
                NetID = String (netid)
                print("**********************print userinfo")
                print(Role)
                print(Name)
                print(NetID)
                
                return true
            }
        }
        return false
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        print("didStartProvisionalNavigation")
    }
    
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        print("webviewDidCommit")
    }
    
    func webView(_ webView: WKWebView, didReceive challenge: URLAuthenticationChallenge, completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) {
        print("didReceiveAuthenticationChallenge")
        print(webView.url)
        completionHandler(.performDefaultHandling, nil)
        
    }
}
