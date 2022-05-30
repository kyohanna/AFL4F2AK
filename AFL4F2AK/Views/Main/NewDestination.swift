//
//  NewDestination.swift
//  AFL4F2AK
//
//  Created by SIFT-DBT Telkom Air 10 on 30/05/22.
//

import SwiftUI

struct NewDestination: View {
    var body: some View {
        NavigationView{
            Text("Add New Destination")
                .navigationTitle("New Destination")
        }
        .navigationViewStyle(.stack)
    }
}

struct NewDestination_Previews: PreviewProvider {
    static var previews: some View {
        NewDestination()
    }
}
