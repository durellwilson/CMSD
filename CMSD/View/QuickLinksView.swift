//
//  ContentView.swift
//  CMSD
//
//  Created by Sabit Islam on 10/19/23.
//
import SwiftUI


struct QuickLinksView: View {
    var body: some View {
        GeometryReader { geometry in
            NavigationView {
                VStack {
                    HStack {
                        NavigationLink(destination: WebView(url: URL(string: "https://google.com")!, webTitle: "Check in")) {
                            VStack {
                                Image(systemName: "person.fill")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .padding()
                                Text("Check in")
                            }
                            
                        }
                        .padding()
                        NavigationLink(destination: WebView(url: URL(string: "https://cms.msu.edu/detroit/_assets/CMS-D%20Spring%20Schedule%202023%20upd.%201.13.23.pdf")!, webTitle: "Schedule")) {
                            VStack {
                                Image(systemName: "calendar")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .padding()
                                Text("Schedule")
                            }
                        }
                        .padding()
                        NavigationLink(destination: WebView(url: URL(string: "https://www.dropbox.com")!, webTitle: "Dropbox")) {
                            VStack {
                                Image(systemName: "shippingbox")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .padding()
                                Text("Dropbox")
                            }
                        }
                        .padding()
                    }
                    
                    HStack {
                        NavigationLink(destination: WebView(url: URL(string: "https://cms.msu.edu/detroit/give/index.html")!, webTitle: "Check-in")) {
                            VStack {
                                Image(systemName: "list.bullet.clipboard.fill")
                                    .resizable()
                                    .frame(width:50 , height: 50)
                                    .padding()
                                Text("Donate")
                            }
                        }
                        .padding()
                        NavigationLink(destination: AboutView()) {
                            VStack {
                                Image(systemName: "info.circle")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .padding()
                                Text("About")
                            }
                        }
                        .padding()
                        NavigationLink(destination: WebView(url: URL(string: "https://cms.msu.edu/detroit/detroit/register/index.html")!, webTitle: "Registration")) {
                            VStack {
                                Image(systemName: "pencil")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .padding()
                                Text("Registration")
                            }
                        }
                        .padding()
                    }
                    Spacer()
                }
                .navigationBarTitle("Quick Links")
                
                
                
                
            }
        //    .frame(width: geometry.size.width / 2)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        QuickLinksView()
    }
}

