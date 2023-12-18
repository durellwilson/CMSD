//
//  ScheduleView.swift
//  CMSD
//
//  Created by Durell Wilson on 11/20/23.
//

import SwiftUI
import EventKit
//set up music class struct

struct MusicClass: Identifiable {
    let id = UUID()
    var title: String
    var age: String
    var days: String
    var instructor: String
    var time: String
    var date: String
//    var startDateComponents = DateComponents()
//    var startDateComponents.startDate: String
//    var startDay: Int
//    var startMonth: Int
//    var startYear: Int
//    var endDay: Int
//    var endDate = Calendar.current.date(from: )
//    var endMonth: Int
//    var endYear: Int
//    init(startDay: Int, startMonth: Int, startYear: Int, endDay: Int, endMonth: Int, endYear: Int, title: String, age: String, days: String, instructor: String, time: String, startDate: String, endDate: String) {
//        self.startDay = startDay
//        self.startMonth = startMonth
//        self.startYear = startYear
//        self.endDay = endDay
//        self.endMonth = endMonth
//        self.endYear = endYear
//        self.title = title
//        self.age = age
//        self.days = days
//        self.instructor = instructor
//        self.time = time
//        self.startDate = startDate
//        self.endDate = endDate
//    }
    
    //date components
//    var dateComponents = DateComponents(calendar: Calendar.current, timeZone: TimeZone(identifier: "America/Detroit"), year: startYear, month: startMonth, day: startDay)
//    let dateComponents = DateComponents(calendar: Calendar.current, timeZone: TimeZone(identifier: "America/Detroit"), year: startYear, month: 9, day: 18)
}



var musicClasses = [MusicClass(title: "Early Childhood Music I", age: "18 Months", days: "Saturday", instructor: "Christie Lower", time: "9 AM - 9:45 AM", date: "Sept. 18 - Dec. 16 \n Jan. 20 - May 4"),MusicClass(title: "Early Childhood Music I", age: "18 Months", days: "Saturday", instructor: "Christie Lower", time: "9 AM - 9:45 AM", date: "Sept. 18 - Dec. 16 \n Jan. 20 - May 4"),MusicClass(title: "Early Childhood Music I", age: "18 Months", days: "Saturday", instructor: "Christie Lower", time: "9 AM - 9:45 AM", date: "Sept. 18 - Dec. 16 \n Jan. 20 - May 4"),MusicClass(title: "Early Childhood Music I", age: "18 Months", days: "Saturday", instructor: "Christie Lower", time: "9 AM - 9:45 AM", date: "Sept. 18 - Dec. 16 \n Jan. 20 - May 4"),MusicClass(title: "Early Childhood Music I", age: "18 Months", days: "Saturday", instructor: "Christie Lower", time: "9 AM - 9:45 AM", date: "Sept. 18 - Dec. 16 \n Jan. 20 - May 4")]

struct ScheduleView: View {
    
    let eventStore = EKEventStore()
    
    @State private var showClass: Bool = false
    
    var body: some View {
                
        VStack {
            
            //Logo with page title
            HStack {
    
                Image("spartan-logo")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .padding()
                
                Divider()
                    .frame(width: 1, height: 80)
                
                Text("SCHEDULE")
                    .font(Font.custom("Gotham-XLight", size: 30))
                    .foregroundColor(.accentColor)
                    .multilineTextAlignment(.center)
                    .padding()
                
            }
            
            //Schedule title
            Text("MSU Community Music School-Detroit \n Fall & Spring 2023 - 2024 Class Schedule")
                .font(Font.custom("Gotham-Bold", size: 15))
                .foregroundColor(.accentColor)
                .padding(.top, 20)
                .multilineTextAlignment(.center)
            
            //Drop down menu Filter
            
            
            
            
            
            //Music Classes
            ForEach(musicClasses) { musicClass in
                Menu {
                    VStack(alignment: .center) {
                        Text(musicClass.days)
                            .font(Font.custom("Gotham-XLight", size: 15))
                            .foregroundColor(.accentColor)
                        Text(musicClass.instructor)
                            .font(Font.custom("Gotham-XLight", size: 15))
                            .foregroundColor(.accentColor)
                        Text(musicClass.time)
                            .font(Font.custom("Gotham-XLight", size: 15))
                            .foregroundColor(.accentColor)
                        Text(musicClass.date)
                            .font(Font.custom("Gotham-XLight", size: 15))
                            .foregroundColor(.accentColor)
                        
                        //button for add to Calendar with symbol
                        Button(action: {
                            let newEvent = EKEvent(eventStore: eventStore)
                            newEvent.title = musicClass.title
                            newEvent.startDate = Date() // set to desired date
                            newEvent.endDate = Date() // set to desired date
                            newEvent.calendar = eventStore.defaultCalendarForNewEvents
                            //add to calendar with eventkit
                            do {
                                try eventStore.save(newEvent, span: .thisEvent)
                            } catch let error as NSError {
                                print("failed to save event with error : \(error)")
                            }
                        }, label: {
                            
                            HStack {
                                Text("Add to Calendar")
                                    .font(Font.custom("Gotham-XLight", size: 15))
                                .foregroundColor(.accentColor)
                                
                                Image(systemName: "calendar")
                                    .foregroundColor(.accentColor)
                            }
                        })
                        
                    }
                    .background(Color.gray)
                } label: {
                    HStack(alignment: .center) {
                        VStack(alignment: .center) {
                            Text(musicClass.title)
                                .font(Font.custom("Gotham-Bold", size: 15))
                                .foregroundColor(.white)
                            Text("Ages \(musicClass.age)")
                                .font(Font.custom("Gotham-XLight", size: 15))
                                .foregroundColor(.white)
                        }
                        .padding()
                        Spacer()
                        Image(systemName: "chevron.down")
                            .foregroundColor(.white)
                            .padding()
                    }
                    .frame(width: 350, height: 50)
                    .background(Color.accentColor)
                    .cornerRadius(10)
                    .padding(.top, 10)
                }
//                    DisclosureGroup(
//                        content: {
//                            VStack(alignment: .center) {
//                                Text(musicClass.days)
//                                    .font(Font.custom("Gotham-XLight", size: 15))
//                                    .foregroundColor(.accentColor)
//                                Text(musicClass.instructor)
//                                    .font(Font.custom("Gotham-XLight", size: 15))
//                                    .foregroundColor(.accentColor)
//                                Text(musicClass.time)
//                                    .font(Font.custom("Gotham-XLight", size: 15))
//                                    .foregroundColor(.accentColor)
//                                Text(musicClass.date)
//                                    .font(Font.custom("Gotham-XLight", size: 15))
//                                    .foregroundColor(.accentColor)
//                            }
//                            .background(Color.gray)
//                        },
//                        label: {
//                            HStack(alignment: .center) {
//                                VStack(alignment: .center) {
//                                    Text(musicClass.title)
//                                        .font(Font.custom("Gotham-Bold", size: 15))
//                                        .foregroundColor(.white)
//                                    Text("Ages: \(musicClass.age)")
//                                        .font(Font.custom("Gotham-XLight", size: 15))
//                                        .foregroundColor(.white)
//                                }
////                                Image(systemName: "chevron.down")
////                                    .foregroundColor(.white)
////                                    .font(.system(size: 15, weight: .bold))
////                                    .rotationEffect(.degrees(showClass ? 0 : 180))
////                                    .animation(.easeInOut, value: showClass)
//                            }
//                            .frame(width: 280, height: 40)
//                        }
//                    )
//                    .tint(Color.white)
//                    .background(Color("AccentColor"))
//                    .cornerRadius(10)
//                    .buttonStyle(.borderedProminent)
//                    .frame(width: 300, height: 50)
//                    .padding(5)
                    }
                }
            
            
            //FILTER MENU
//            Menu("FILTER") {
//                
//            } primaryAction: {
//                
//            }
            
            
    }
}

#Preview {
    ScheduleView()
}
