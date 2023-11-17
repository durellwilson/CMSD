//
//  ContentView.swift
//  CMSD
//
//  Created by Sabit Islam on 10/19/23.
//
import SwiftUI

struct QuickLinksView: View {
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                VStack {
                  //  Spacer()
                    HStack {
                        LinkButtonView(url: "https://google.com", imageName: "person.fill", title: "Discover")
                            .frame(width: geometry.size.width / 3)
                        
                        LinkButtonView(url: "https://drive.google.com/file/d/1_-_FlrODyeYDY9-xJyJR8rYPsQF8_LAt/view", imageName: "calendar", title: "Schedule")
                            .frame(width: geometry.size.width / 3)
                        
                        LinkButtonView(url: "https://www.dropbox.com", imageName: "shippingbox", title: "Dropbox")
                            .frame(width: geometry.size.width / 3)
                    }
                    HStack {
                        LinkButtonView(url: "https://www.cmsd.msu.edu/support", imageName: "list.bullet.clipboard.fill", title: "Donate", imageWidth: 30, imageHeight: 40)
                            .frame(width: geometry.size.width / 3)
                        
                        NavigationLink(destination: AboutView()) {
                            VStack {
                                ZStack {
                                    Circle()
                                        .fill(Color.accentColor)
                                        .frame(width: 90, height: 90)
                                    
                                    Image(systemName: "info.circle")
                                        .resizable()
                                        .frame(width: 45, height: 45)
                                        .padding()
                                        .foregroundColor(.white)
                                }
                                Text("About")
                                    .font(.headline)
                                    .frame(width: 100)
                            }
                        }
                    //    .frame(width: geometry.size.width / 3)
                        .padding([.trailing, .leading], 25)
                        
                        
                        LinkButtonView(url: "https://cms.msu.edu/detroit/detroit/register/index.html", imageName: "pencil", title: "Registration")
                            .frame(width: geometry.size.width / 3)
                    }
           //         Spacer()
                }
             .ignoresSafeArea(edges: .top)
            }
        }
    }
}
//struct QuickLinksView: View {
//    var body: some View {
//        
//            NavigationView {
//                VStack {
//                    Spacer()
//                    HStack {
//                        LinkButtonView(url: "https://google.com", imageName: "person.fill", title: "Discover")
//                        
//                        LinkButtonView(url: "https://drive.google.com/file/d/1_-_FlrODyeYDY9-xJyJR8rYPsQF8_LAt/view", imageName: "calendar", title: "Schedule")
//                        
//                        LinkButtonView(url: "https://www.dropbox.com", imageName: "shippingbox", title: "Dropbox")
//                    }
//                    HStack {
//                        LinkButtonView(url: "https://www.cmsd.msu.edu/support", imageName:"list.bullet.clipboard.fill", title: "Donate", imageWidth: 30, imageHeight: 40)
//                        
//                        NavigationLink(destination: AboutView()) {
//                            VStack {
//                                ZStack {
//                                    Circle()
//                                        .fill(Color.accent)
//                                        .frame(width: 90, height: 90)
//                                    
//                                    Image(systemName: "info.circle")
//                                        .resizable()
//                                        .frame(width: 45, height: 45)
//                                        .padding()
//                                        .foregroundStyle(.white)
//                                    
//                                }
//                                Text("About")
//                                    .bold()
//                                
//                            }
//                        }
//                        .padding([.trailing,.leading],20)
//                        
//                        LinkButtonView(url: "https://cms.msu.edu/detroit/detroit/register/index.html", imageName: "pencil", title: "Registration")
//                        
//                    }
//                    Spacer()
//                }
//                
//                .ignoresSafeArea(edges: .top)
//                
//                
//                
//                
//                
//            }
//            //    .frame(width: geometry.size.width / 2)
//            //     .ignoresSafeArea()
//        
//        }
//    }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        QuickLinksView()
    }
}

