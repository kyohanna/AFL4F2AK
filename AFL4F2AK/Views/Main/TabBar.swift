//
//  TabBar.swift
//  AFL4F2AK
//
//  Created by SIFT-DBT Telkom Air 10 on 30/05/22.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView{
            
            HomeView()
                .tabItem{
                    Label("Home", systemImage: "house")
                }
            CategoriesView()
                .tabItem{
                    Label("Category", systemImage: "square.fill.text.grid.1x2")
                }
            
            FavoritesView()
                .tabItem{
                    Label("Favorites", systemImage: "heart")
                }
            
            SettingsView()
                .tabItem{
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
