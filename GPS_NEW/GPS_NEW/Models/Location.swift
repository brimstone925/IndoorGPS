//
//  Location.swift
//  GPS_NEW
//
//  Created by Dylan Smith on 10/9/19.
//  Copyright © 2019 Dylan Smith. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Location: Hashable, Codable, Identifiable {
    var id: Int
    
    var number: String
    var building: String
    fileprivate var imageName: String
    fileprivate var coordinates: Coordinates
    var campus: String

    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
}


extension Location {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}
