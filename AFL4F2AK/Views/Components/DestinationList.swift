//
//  DestinationList.swift
//  AFL4F2AK
//
//  Created by SIFT-DBT Telkom Air 10 on 30/05/22.
//

import SwiftUI

struct DestinationList: View {
    @State var searchText = ""
    @State var isSearching = false
    var destinations: [Destination]
    
    var body: some View {
        VStack{
            HStack{
                HStack {
                    TextField("Search", text: $searchText)
                        .padding(.leading, 20)
                }
                .padding()
                .background(Color(.systemGray5))
                .cornerRadius(12)
                .onTapGesture (perform: {
                    isSearching = true
                })
                .overlay(
                    HStack{
                        Image(systemName: "magnifyingglass")
                        Spacer()
                        
                        if isSearching{
                            Button(action: {searchText = ""}, label: {Image(systemName: "xmark.circle.fill")
                                
                            })
                        }
                    }
                        .padding(.horizontal, 10)
                        .foregroundColor(.gray)
                )
                .transition(.move(edge: .trailing))
                .animation(.spring())
                if isSearching{
                    Button(action: {
                        isSearching = false
                        searchText = ""}, label: {Text("Cancel")})
                }
            }
            
            
           HStack{
            Text("\(destinations.count) \(destinations.count > 1 ? "destinations" : "destination")")
                .font(.headline)
                .fontWeight(.medium)
                .opacity(0.7)
            
            Spacer()
        }
            
            
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)],spacing: 15) {
                ForEach((destinations).filter({"\($0)".contains(searchText) || searchText.isEmpty})){ Destination in
                    NavigationLink(destination: DestinationView(destination: Destination)){
                        DestinationCard(destination: Destination)
                    }  
                }
            }
            .padding(.top)
      }
        .padding(.horizontal)
    }
}

struct DestinationList_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView{
            DestinationList(destinations: Destination.all)
        }
    }
}
