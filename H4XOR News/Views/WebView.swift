//
//  WebView.swift
//  H4XOR News
//
//  Created by Rumeysa Yücel on 11.07.2021.
//

import SwiftUI
import Foundation
import WebKit

struct WebView: UIViewRepresentable {
    
    let urlString : String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
 
}


