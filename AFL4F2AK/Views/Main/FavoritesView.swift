//
//  FavoritesView.swift
//  AFL4F2AK
//
//  Created by SIFT-DBT Telkom Air 10 on 30/05/22.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationView{
            Text("You have not selected your favorite destination yet")
                .navigationTitle("Favorites")
        }
        .navigationViewStyle(.stack)
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
