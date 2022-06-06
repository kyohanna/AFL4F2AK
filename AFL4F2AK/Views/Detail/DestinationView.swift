//
//  DestinationView.swift
//  AFL4F2AK
//
//  Created by SIFT-DBT Telkom Air 10 on 30/05/22.
//

import SwiftUI

struct DestinationView: View {
    var destination: Destination
    
    var body: some View {
        ScrollView {
            AsyncImage(url: URL(string: destination.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .frame(height: 300)
            .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
            
            VStack(spacing: 30){
                Text(destination.name)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                
                VStack(alignment: .leading, spacing: 30){
                    if !destination.description.isEmpty {
                        Text(destination.description)
                    }
                    
                    if !destination.telp.isEmpty {
                        VStack(alignment: .leading, spacing: 20){
                            Text("Phone Number :")
                                .font(.headline)
                            
                            Text(destination.telp)
                        }
                    }
                    
                    
                    
                    if !destination.address.isEmpty {
                        VStack(alignment: .leading, spacing: 20){
                            Text("Address :")
                                .font(.headline)
                            
                            Text(destination.address)
                            
                            MapView(coordinate: destination.locationCoordinate)
                                .scaledToFit()
                        }
                    }
                    
                
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .ignoresSafeArea(.container, edges: .top)
    }
}

struct DestinationView_Previews: PreviewProvider {
    static var previews: some View {
        DestinationView(destination: Destination.all[0])
    }
}
