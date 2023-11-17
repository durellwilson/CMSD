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
        GeometryReader { geo in
            NavigationLink(destination: WebView(url: URL(string: url)!, webTitle: title)) {
                VStack {
                    ZStack {
                        Circle()
                            .frame(width: circleLength ?? 90, height: circleLength ?? 90)
                            .foregroundStyle(Color.accentColor)
                        Image(systemName: imageName)
                            .resizable()
                            .frame(width: imageWidth ?? 40, height: imageHeight ?? 40)
                            .padding()
                            .foregroundStyle(.white)
                    }
                    Text(title)
                        .frame(width: 100)
                    //.border(.red)
                        .font(.headline)
                }
                
            }
            .padding([.trailing,.leading],25)
        }
    }
}






//struct LinkButtonView: View {
//    let url: String
//    let imageName: String
//    let title: String
//    var circleLength: CGFloat?
//    var imageWidth: CGFloat?
//    var imageHeight: CGFloat?
//    
//    @Environment(\.sizeCategory) var sizeCategory
//    
//    var body: some View {
//        GeometryReader { geometry in
//            let widthRatio = geometry.size.width / 300 // Adjust this value based on your layout needs
//            let heightRatio = geometry.size.height / 600 // Adjust this value based on your layout needs
//            
////            let titleFont: Font = {
////                switch sizeCategory {
////                case .accessibilityMedium, .accessibilityLarge, .accessibilityExtraLarge, .accessibilityExtraExtraLarge, .accessibilityExtraExtraExtraLarge:
////                    return .headline
////                default:
////                    return .body
////                }
////            }()
////            .scaleEffect(CGSize(width: widthRatio, height: heightRatio))
//            
//            NavigationLink(destination: WebView(url: URL(string: url)!, webTitle: title)) {
//                VStack {
//                    ZStack {
//                        Circle()
//                            .frame(width: circleLength ?? 90, height: circleLength ?? 90)
//                            .foregroundColor(Color.accentColor)
//                        Image(systemName: imageName)
//                            .resizable()
//                            .frame(width: imageWidth ?? 40, height: imageHeight ?? 40)
//                            .padding()
//                            .foregroundColor(.white)
//                    }
//                    Text(title)
//                        .font(.body.bold())
//                        .scaleEffect(CGSize(width: widthRatio, height: heightRatio))
//                }
//            }
//            .padding([.trailing, .leading], 25)
//        }
//    }
//}


