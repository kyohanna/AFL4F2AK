//
//  HomeView.swift
//  AFL4F2AK
//
//  Created by SIFT-DBT Telkom Air 10 on 30/05/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                DestinationList(destinations: Destination.all)  
        }
            .navigationTitle("Welcome Kezia!")
    }
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

