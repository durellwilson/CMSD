//
//  AdministratorView.swift
//  CMSD
//
//  Created by Durell Wilson on 11/8/23.
//

import SwiftUI

struct Administrator: Codable, Identifiable {
        var id = UUID()
        var name: String
        var title: String
        var bio: String
        var photo: String
    }

let kris = Administrator(name: "Kris Johnson", title: "Executive Director", bio: "Kris Johnson (he/his) has served in the role of Director of Jazz Studies at the University of Utah; a Project Director for Pontiac School District, leading a U.S. Department of Education Arts in Education - Model Development and Dissemination Grant; and as the Education and Digital Programming Manager for the Motown Museum. Additionally, he has served on the teaching faculty at The Ohio State University, Detroit Symphony Orchestra Civic Youth Ensembles, and as an Artistic Liaison for JazzEd Detroit through a partnership with ArtOps and the Fred A. and Barbara M. Erb Family Foundation. Kris received his Bachelors and Masters degrees in Jazz Studies from Michigan State University in 2005 and 2007 respectively. ", photo: "kris-photo")

    // administrator data stored on server
//class apiCall {
//    func getAdministrators(completion:@escaping ([Administrator]) -> ()) {
//        guard let url = URL(string: "https://your-server.com/administrators") else { return }
//        
//        URLSession.shared.dataTask(with: url) { (data, _, _) in
//            let administrators = try! JSONDecoder().decode([Administrator].self, from: data!)
//            DispatchQueue.main.async {
//               completion(administrators)
//            }
//        }
//        .resume()
//    }
//}

//struct AdministratorView: View {
//       @State var administrators = [Administrator]()
//  
//       var body: some View {
//           List(administrators) { administrator in
//               HStack {
//                  Image(administrator.photo)
//                      .resizable()
//                      .frame(width: 60, height: 60)
//                      .clipShape(Circle())
//                  VStack(alignment: .leading) {
//                      Text(administrator.name)
//                          .font(Font.custom("Gotham-Black", size: 18))
//                          .foregroundColor(Color("AccentColor"))
//                      Text(administrator.title)
//                          .font(Font.custom("Gotham-Thin", size: 18))
//                          .foregroundColor(Color("AccentColor"))
//                  }
//               }
//           }
//           .onAppear() {
//               apiCall().getAdministrators { (administrators) in
//                  self.administrators = administrators
//                   
//                   do {
//                       let data = try JSONEncoder().encode(kris)
//                       let jsonString = String(data: data, encoding: .utf8)!
//                       
//                   } catch {
//                       print(error.localizedDescription)
//                   }
//               }
//           }
//       }
//   }

struct AdministratorView: View {
    var body: some View {
        //navigation to bio
        //accept json data from server
        
        HStack {
            Image(kris.photo)
                .resizable()
                .frame(width: 60, height: 60)
                .clipShape(Circle())
            VStack(alignment: .leading) {
                Text(kris.name)
                    .font(Font.custom("Gotham-Black", size: 18))
                    .foregroundColor(Color("AccentColor"))
                Text(kris.title)
                    .font(Font.custom("Gotham-Thin", size: 18))
                    .foregroundColor(Color("AccentColor"))
            }
        }
    }
}

    #Preview {
        AdministratorView()
    }
