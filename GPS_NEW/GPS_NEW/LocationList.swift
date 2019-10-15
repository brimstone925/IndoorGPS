//
//  Location.swift
//  GPS_NEW
//
//  Created by Dylan Smith on 10/9/19.
//  Copyright © 2019 Dylan Smith. All rights reserved.
//

import SwiftUI

struct LocationList: View {
    var body: some View {
        NavigationView {
            List(locationData) { location in
                NavigationLink(destination: LocationView(location: location)) {
                    LocationRow(location: location)
                }
            }
            .navigationBarTitle(Text("Locations"))
        }
    }
}

struct LocationList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            LocationList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
