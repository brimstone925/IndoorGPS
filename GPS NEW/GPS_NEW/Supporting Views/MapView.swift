//
//  MapView.swift
//  GPS_NEW
//
//  Created by Dylan Smith on 10/9/19.
//  Copyright © 2019 Dylan Smith. All rights reserved.
//

import UIKit
import SwiftUI
import MapKit
import CoreLocation

struct MapView: UIViewRepresentable {
    
    var coordinate: CLLocationCoordinate2D
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    /**
           This would be an example of some documentation.
    
           - Parameter example: The parameter that I am using for an example, not actually inside of the code
    
           - Returns: An example data type.
    
           - Warning: Make sure to not pass in xyz thing.
    
           - Author: Dylan Smith
    */
    func updateUIView(_ view: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: locationData[0].locationCoordinate)
    }
}
