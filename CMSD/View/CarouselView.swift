//
//  CarouselView.swift
//  CMSD
//
//  Created by Sabit Islam on 11/9/23.
//

import SwiftUI

struct CarouselView: View {
    @State private var index = 0
    var body: some View {
        VStack{
            TabView(selection: $index) {
//                ForEach((0..<articles.count), id: \.self) { index in
//                    CardView()
//                }
                ForEach(articles, id: \.self) { article in
                    NavigationLink(destination: WebView(url: URL(string: article.url)!, webTitle: article.title)) {
                                           RoundedRectangle(cornerRadius: 15)
                                               .fill(Color.white)
                                               .shadow(radius: 5)
                                               .overlay(
                                                   VStack(alignment: .leading, spacing: 8) {
                                                       Text(article.title)
                                                           .font(.headline)
                                                           .fontWeight(.bold)
                                                       
                                                       Text(article.subheading)
                                                           .font(.subheadline)
                                                           .foregroundColor(.accentColor)
                                                   }
                                                   .padding(15)
                                               )
                                               .padding(10)
                                       }
                                   }
                               .padding()
               
                                    
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        }
      .frame(height: 270)
        //.ignoresSafeArea()
    }
        
}

struct CardView: View{
    var body: some View{
        RoundedRectangle(cornerRadius: 23)
            .fill(.accent)
            .frame(height: 270)
            .padding([.trailing, .leading], 10)
    }
}

#Preview(body: {
    CarouselView()
})
