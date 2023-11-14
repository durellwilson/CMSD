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
                ForEach((0..<articles.count), id: \.self) { index in
                    CardView()
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        }
        .frame(height: 250)
    }
}

struct CardView: View{
    var body: some View{
        RoundedRectangle(cornerRadius: 23)
            .fill(.accent)
            .frame(height: 250)
            .padding()
    }
}

#Preview(body: {
    CarouselView()
})
