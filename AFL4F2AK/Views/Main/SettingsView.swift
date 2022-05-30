//
//  SettingsView.swift
//  AFL4F2AK
//
//  Created by SIFT-DBT Telkom Air 10 on 30/05/22.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView{
            Text("Settings")
                .navigationTitle("Settings")
        }
        .navigationViewStyle(.stack)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
