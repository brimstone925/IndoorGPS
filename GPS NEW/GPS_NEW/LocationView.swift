//
//  ContentView.swift
//  GPS_NEW
//
//  Created by Dylan Smith on 10/9/19.
//  Copyright © 2019 Dylan Smith. All rights reserved.
//

import SwiftUI

struct LocationView: View {
    var location: Location
    
    var body: some View {
        VStack {
            MapView(coordinate: location.locationCoordinate)
                .frame(height: 350)
            
            image(image: location.image)
                .offset(x: 0, y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment:.leading) {
                Text(location.number)
                    .font(.title)
                
                HStack(alignment: .top) {
                    Text(location.building)
                        .font(.subheadline)
                    Spacer()
                    Text(location.campus)
                        .font(.subheadline)
                
                }
            }
        .padding()
        Spacer()
            
        }
        .navigationBarTitle(Text(verbatim: location.number), displayMode: .inline)
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView(location: locationData[0])
    }
}
