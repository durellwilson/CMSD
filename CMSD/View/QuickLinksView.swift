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
                VStack {
                    HStack {
                        LinkButtonView(url: "https://google.com", imageName: "person.fill", title: "Discover")
                        
                        LinkButtonView(url: "https://drive.google.com/file/d/1_-_FlrODyeYDY9-xJyJR8rYPsQF8_LAt/view", imageName: "calendar", title: "Schedule")
                        
                        LinkButtonView(url: "https://www.dropbox.com", imageName: "shippingbox", title: "Dropbox")
                    }
                    HStack {
                        LinkButtonView(url: "https://www.cmsd.msu.edu/support", imageName:"list.bullet.clipboard.fill", title: "Donate", imageWidth: 30, imageHeight: 40)
                        
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
                                        .foregroundStyle(.white)
                                    
                                }
                                Text("About")
                                
                            }
                        }
                        .padding([.trailing,.leading])
                        
                        LinkButtonView(url: "https://cms.msu.edu/detroit/detroit/register/index.html", imageName: "pencil", title: "Registration")
                        
                    }
                    //Spacer()
                }
                
                .ignoresSafeArea(edges: .top)
                
                
                
                
                
            }
            //    .frame(width: geometry.size.width / 2)
            //     .ignoresSafeArea()
        
        }
    }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        QuickLinksView()
    }
}

