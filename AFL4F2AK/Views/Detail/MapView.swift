//
//  MapView.swift
//  AFL4F2AK
//
//  Created by SIFT-DBT Telkom Air 10 on 06/06/22.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    
    @AppStorage("MapView.zoom")
    private var zoom: Zoom = .near
    
    enum Zoom: String, CaseIterable, Identifiable{
        case near = "Near"
        case medium = "Medium"
        case far = "Far"
        
        var id: Zoom{
            return self
        }
    }
    
    var ptc: CLLocationDegrees {
        switch zoom{
        case .near: return 0.004
        case .medium: return 0.02
        case .far: return 0.2
        }
    }
    
    var body: some View {
        Map(coordinateRegion: .constant(region))
    }
    
    var region: MKCoordinateRegion{
        MKCoordinateRegion(
        center: coordinate, span: MKCoordinateSpan(latitudeDelta: ptc, longitudeDelta: ptc)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(
            latitude: -7.24971364830632, longitude: 112.75179929034319))
    }
}

