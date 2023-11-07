//
//  WebView().swift
//  CMSD
//
//  Created by Sabit Islam on 10/20/23.
//
import SwiftUI
import WebKit

struct WebView: View {
    let url: URL
    @State var webTitle: String

    var body: some View {
        WebViewContainer(url: url)
            .navigationBarTitle(webTitle)
            
    }
        
}
   

struct WebViewContainer: UIViewRepresentable {
    let url: URL

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        // Load the URL when the view is updated
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}

