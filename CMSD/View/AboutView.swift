//
//  AboutView.swift
//  CMSD
//
//  Created by Sabit Islam on 10/25/23.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
                //Header
            
        VStack {
            
            HStack {
    
                Image("spartan-logo")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .padding()
                
                Divider()
                    .frame(width: 1, height: 80)
                
                Text("SCHOOL/STAFF INFORMATION")
                    .font(Font.custom("Gotham-XLight", size: 20))
                    .foregroundColor(Color("AccentColor"))
                    .multilineTextAlignment(.center)
                    .padding()
                
            }
            
                //photo of school with rounded rectangle border
            Image("school-photo")
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 200)
            
                //School address
            Text("MSU Community Music School-Detroit \n 3408 Woodward Ave. \n Detroit, MI 48201")
                .font(Font.custom("Gotham-Thin", size: 18))
                .foregroundColor(Color("AccentColor"))
                .multilineTextAlignment(.center)
            
            HStack {
                Link("Directions", destination: URL(string: "http://maps.apple.com/?daddr=3408+Woodward+Ave,+Detroit,+MI+48201")!)
                    .font(Font.custom("Gotham-Medium", size: 18))
                    .foregroundColor(Color("AccentColor"))
                    .multilineTextAlignment(.center)
                
                Image(systemName: "map.fill")
                    .font(.system(size: 18))
                    .foregroundColor(Color("AccentColor"))
            }
                //tabview showing administrators and staff with navigation link to their bio
            
            TabView {
                
                VStack {
                    Text("ADMINISTRATION")
                        .font(Font.custom("Gotham-Black", size: 20))
                        .foregroundColor(Color("AccentColor"))
                        .multilineTextAlignment(.center)
                    
                        //list of administrators
                    List {
                            //image circle with name and title
                        NavigationLink {
                            VStack {
                                Image("kris-photo")
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                    .clipShape(Circle())
                                Text("Kris Johnson (he/his) has served in the role of Director of Jazz Studies at the University of Utah; a Project Director for Pontiac School District, leading a U.S. Department of Education Arts in Education - Model Development and Dissemination Grant; and as the Education and Digital Programming Manager for the Motown Museum. Additionally, he has served on the teaching faculty at The Ohio State University, Detroit Symphony Orchestra Civic Youth Ensembles, and as an Artistic Liaison for JazzEd Detroit through a partnership with ArtOps and the Fred A. and Barbara M. Erb Family Foundation. Kris received his Bachelors and Masters degrees in Jazz Studies from Michigan State University in 2005 and 2007 respectively.")
                            }
                        } label: {
                            HStack {
                                Image("kris-photo")
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                    .clipShape(Circle())
                                VStack(alignment: .leading) {
                                    Text("Kris Johnson")
                                        .font(Font.custom("Gotham-Black", size: 18))
                                        .foregroundColor(Color("AccentColor"))
                                    Text("Executive Director")
                                        .font(Font.custom("Gotham-Thin", size: 18))
                                        .foregroundColor(Color("AccentColor"))
                                }
                            }
                        }
                        
                        NavigationLink {
                            VStack {
                                Image("paola-photo")
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                    .clipShape(Circle())
                                Text("Paola Smith (she/her)  is a Latinx Colombian composer, psychologist, and social worker with Master's Degrees from Syracuse University in Composition, where she received the 2008 Heaton Fellowship, and from University of Michigan in Social Work, where she received the 2014 Eleanor Cranefield Scholarship. She served as an adjunct professor at Syracuse University, a social worker for Say Yes Syracuse, Imagine Syracuse, and Matrix Head Start in Detroit, an education assistant for the Detroit Symphony Orchestra, Director of Program and Operations at Detroit Children's Choir, and as a music assistant for the Musica Mestiza Project led by composer Gabriela Frank. ")
                            }
                        } label: {
                            HStack {
                                Image("paola-photo")
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                    .clipShape(Circle())
                                VStack(alignment: .leading) {
                                    Text("Paola Smith")
                                        .font(Font.custom("Gotham-Black", size: 18))
                                        .foregroundColor(Color("AccentColor"))
                                    Text("Assistant Director")
                                        .font(Font.custom("Gotham-Thin", size: 18))
                                        .foregroundColor(Color("AccentColor"))
                                    
                                }
                            }
                        }
                        
                        NavigationLink {
                            VStack {
                                Image("jonathan-photo")
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                    .clipShape(Circle())
                                Text("Jonathan Klar (he/his) has been a program manager at CMSD since 2018. Jonathan is in charge of managing the youth group music instruction, onsite music therapy, and onsite early childhood programs at CMS-D. Before joining the Community Music School-Detroit, Jonathan participated in AmeriCorps where he served for two service terms at Accounting Aid Society. Jonathan graduated with his Bachelor’s degree in Music Education at Central Michigan University in 2014.")
                            }
                        } label: {
                            HStack {
                                Image("jonathan-photo")
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                    .clipShape(Circle())
                                VStack(alignment: .leading) {
                                    Text("Jonathan Klar")
                                        .font(Font.custom("Gotham-Black", size: 18))
                                        .foregroundColor(Color("AccentColor"))
                                    Text("Program Manager")
                                        .font(Font.custom("Gotham-Thin", size: 18))
                                        .foregroundColor(Color("AccentColor"))
                                    
                                }
                            }
                        }
                        
                        NavigationLink {
                            VStack {
                                Image("keir-photo")
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                    .clipShape(Circle())
                                Text("Keir Lee (he/his) graduated with his Bachelor’s degree in Music Education at Michigan State University in 2014. He has been a program manager at CMSD since 2019. Keir manages the Spartan Youth Jazz, Verses, and Adult Programs at CMS-D. Before joining the Community Music School-Detroit, Keir taught K-6 elementary general music at Carl Wilde Elementary in Indianapolis, Indiana.")
                            }
                        } label: {
                            HStack {
                                Image("keir-photo")
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                    .clipShape(Circle())
                                VStack(alignment: .leading) {
                                    Text("Keir Lee")
                                        .font(Font.custom("Gotham-Black", size: 18))
                                        .foregroundColor(Color("AccentColor"))
                                    Text("Program Manager")
                                        .font(Font.custom("Gotham-Thin", size: 18))
                                        .foregroundColor(Color("AccentColor"))
                                    
                                }
                            }
                        }
                        
                        NavigationLink {
                            VStack {
                                Image("christie-photo")
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                    .clipShape(Circle())
                                Text("Christie Lower (she/her) is the Early Childhood Music Program Manager at the MSU Community Music School-Detroit. Since 2013, Christie has been actively working on site in our classrooms, and off site in various child care centers with young children in the metro Detroit area. Prior to this, Christie taught elementary music in the Dearborn and Ann Arbor Public School Districts.  Christie graduated with her Bachelor’s Degree in Music Education at Michigan State University in 2014. She has also completed level one certifications in early childhood music and elementary music from the Gordon Institute for Music Learning.")
                            }
                        } label: {
                            HStack {
                                Image("christie-photo")
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                    .clipShape(Circle())
                                VStack(alignment: .leading) {
                                    Text("Christie Lower")
                                        .font(Font.custom("Gotham-Black", size: 18))
                                        .foregroundColor(Color("AccentColor"))
                                    Text("Early Childhood Music Program Manager")
                                        .font(Font.custom("Gotham-Thin", size: 18))
                                        .foregroundColor(Color("AccentColor"))
                                    
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    AboutView()
}

