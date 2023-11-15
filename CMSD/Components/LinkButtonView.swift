//
//  LinkButtonView.swift
//  CMSD
//
//  Created by Sabit Islam on 11/14/23.
//

import Foundation
import SwiftUI


struct LinkButtonView: View {
    
    @State var url: String
    
    @State var imageName: String
    @State var title: String
    @State var circleLength: CGFloat?
    @State var imageWidth: CGFloat?
    @State var imageHeight: CGFloat?
    
    var body: some View {
        
        NavigationLink(destination: WebView(url: URL(string: url)!, webTitle: title)) {
            VStack {
                ZStack {
                    Circle()
                        .frame(width: circleLength == nil ? 90: circleLength, height: circleLength == nil ? 90: circleLength)
                        .foregroundStyle(Color.accentColor)
                    Image(systemName: imageName)
                        .resizable()
                        .frame(width: imageWidth == nil ? 40: imageWidth, height: imageHeight == nil ? 40: imageHeight)
                        .padding()
                        .foregroundStyle(.white)
                }
                
                Text(title)
                
            }
            
        }
        .padding([.trailing,.leading])
    }
}
