//
//  DestinationList.swift
//  AFL4F2AK
//
//  Created by SIFT-DBT Telkom Air 10 on 30/05/22.
//

import SwiftUI

struct DestinationList: View {
    var destinations: [Destination]
    
    var body: some View {
        VStack{
           HStack{
            Text("\(destinations.count) \(destinations.count > 1 ? "destinations" : "destination")")
                .font(.headline)
                .fontWeight(.medium)
                .opacity(0.7)
            
            Spacer()
        }
            
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)],spacing: 15) {
                ForEach(destinations){ Destination in
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
