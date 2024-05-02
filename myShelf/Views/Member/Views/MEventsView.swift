////
////  MEventsView.swift
////  myShelf
////
////  Created by Dewashish Dubey on 23/04/24.
////
//
/*import SwiftUI
import Firebase

struct MEventsView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    @State private var lastReadGenre: String = "Loading..." // Default value until data is fetched
    
    var body: some View {
        VStack {
            if let user = viewModel.currentUser {
                Text("User ID: \(user.id)")
                Text("Last Read Genre: \(lastReadGenre)")
            } else {
                Text("User not found")
            }
        }
        .onAppear {
            fetchLastReadGenre()
        }
    }
    
    func fetchLastReadGenre() {
        guard let userID = viewModel.currentUser?.id else {
            print("User ID not available")
            return
        }
        
        let db = Firestore.firestore()
        let memberRef = db.collection("members").document(userID)
        
        memberRef.addSnapshotListener { document, error in
            if let document = document, document.exists {
                if let lastReadGenre = document.data()?["lastReadGenre"] as? String {
                    self.lastReadGenre = lastReadGenre
                } else {
                    self.lastReadGenre = "Not available"
                }
            } else {
                print("Document does not exist or error occurred: \(error?.localizedDescription ?? "Unknown error")")
                self.lastReadGenre = "Error fetching data"
            }
        }
    }
}

struct MEventsView_Previews: PreviewProvider {
    static var previews: some View {
        MEventsView().environmentObject(AuthViewModel())
    }
}
*/

//
//  MEventPage.swift
//  myShelf
//
//  Created by user3 on 30/04/24.
//

//
//  MEventPage.swift
//  myShelf
//
//  Created by user3 on 30/04/24.
//

import SwiftUI

struct MEventsView: View {
    var body: some View {
        VStack(){
            ScrollView(showsIndicators: false){
                ImagePlaceholder()
                EventDetail()
            }

        }.ignoresSafeArea()
    }
}

struct ImagePlaceholder: View {
    var body: some View {
        Image("library")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .clipped()
            .overlay(
                LinearGradient(
                    gradient: Gradient(colors: [Color.black.opacity(0.2), Color.black.opacity(0.9)]),
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
    }
}





struct EventDetail: View {
    var body: some View {
        
            Text("Book Reading & Signing Event")
                .font(.custom("SF Pro", size: 22))
                .padding(.bottom,30)
        
        VStack(alignment: .leading, spacing: 30){
            HStack{
                HStack(alignment: .center, spacing: 10) {
                    Image(systemName: "calendar")
                }
                .padding(.horizontal, 10)
                .padding(.vertical, 12)
                .background(Color(red: 0.26, green: 0.52, blue: 0.96))
                .cornerRadius(6)
                
                VStack(alignment: .leading, spacing: 10){
                    Text("19 January 2024")
                        .font(.custom("SF Pro Text", size: 14)
                          .weight(.medium)
                    )
                    Text("Tuesday, 04:00 PM")
                      .font(.custom("SF Pro Text", size: 12)
                          .weight(.medium)
                      )
                      .foregroundColor(.white.opacity(0.6))
                }
            }.padding(.horizontal)
            
            HStack{
                HStack(alignment: .center, spacing: 10) {
                    Image(systemName: "location")
                }
                .padding(.horizontal, 10)
                .padding(.vertical, 12)
                .background(Color(red: 0.26, green: 0.52, blue: 0.96))
                .cornerRadius(6)
                
                VStack(alignment: .leading, spacing: 10){
                    Text("The National Library of India")
                        .font(.custom("SF Pro Text", size: 14)
                          .weight(.medium)
                    )
                    Text("Kolkata, West Bengal")
                      .font(.custom("SF Pro Text", size: 12)

                      )
                      .foregroundColor(.white.opacity(0.6))
                }
            }.padding(.horizontal)
            
            
            HStack{
                HStack(alignment: .center, spacing: 10) {
                    Image(systemName: "person")
                }
                .padding(.horizontal, 11)
                .padding(.vertical, 12)
                .background(Color(red: 0.26, green: 0.52, blue: 0.96))
                .cornerRadius(6)
                
                VStack(alignment: .leading, spacing: 10){
                    Text("J. K. Rowling")
                        .font(.custom("SF Pro Text", size: 14)
                          .weight(.medium)
                    )
                    Text("Author")
                      .font(.custom("SF Pro Text", size: 12)

                      )
                      .foregroundColor(.white.opacity(0.6))
                }
            }.padding(.horizontal)
            
            
                Button(action: {
                }) {
                    HStack(alignment: .center, spacing: 10) {
                        Image(systemName: "plus.circle.fill")
                            .foregroundColor(.white)
                        Text("Register")
                            .foregroundColor(.white)
                    }
                    .padding(10)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(Color(red: 0.26, green: 0.52, blue: 0.96))
                    .cornerRadius(6)
            }.padding(.horizontal)
            
            Text("Event Overview")
                .font(.custom("SF Pro Text", size: 16)
                .weight(.semibold)
                )
                .frame(maxWidth: .infinity, alignment: .topLeading)
                .padding(.horizontal)
            
            Text("Prepare to be transported into the enchanting world of literature as the National Library of India proudly presents \"Magical Literary Evening: A Conversation with J.K. Rowling.\" Renowned author J.K. Rowling, celebrated for her iconic Harry Potter series, will grace the stage for an unforgettable evening of inspiration and imagination.\n\nThe event will feature Rowling herself, offering insights into her creative process, the magical universe of Harry Potter, and her latest literary endeavors. Attendees will have the opportunity to delve into the depths of Rowling's literary genius, exploring the themes, characters, and inspirations that have captured the hearts of millions worldwide.\n\nThe evening will include a captivating discussion moderated by esteemed literary scholars, providing a deeper understanding of Rowling's literary contributions and the enduring impact of her work on readers of all ages. Following the conversation, Rowling will engage with the audience in a special Q&A session, offering fans the chance to interact directly with the beloved author.\n\nAdditionally, attendees will have the exclusive opportunity to purchase signed copies of Rowling's books and merchandise, ensuring a cherished memento of this magical literary experience. Don't miss this rare chance to embark on a journey through the realms of fantasy and imagination with one of the world's most beloved authors at the National Library of India's \"Magical Literary Evening: A Conversation with J.K. Rowling.\"")
              .font(Font.custom("SF Pro Text", size: 14))
              .frame(maxWidth: .infinity, alignment: .topLeading)
              .padding(.horizontal)
            
        }
    }
}

struct MemberEventPage_Previews: PreviewProvider {
    static var previews: some View {
        MEventsView()
            .preferredColorScheme(.dark)
    }
}

