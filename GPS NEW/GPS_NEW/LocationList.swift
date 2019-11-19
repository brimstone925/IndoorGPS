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
            VStack(alignment: .leading) {
                LabelTextField(label: "FROM:", placeHolder: "Fill in the start location")
                LabelTextField(label: "TO:", placeHolder: "Fill in the end location")
                RoundButton().padding(.top, 20)
            }
        }
    }    
}

struct LabelTextField: View {
    var label: String
    var placeHolder: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(label)
                .font(.headline)
        }
        .padding(.horizontal, 15)
    }
}


struct RoundButton: View {
    var body: some View {
        Button(action: {}) {
            HStack {
                Spacer()
                Text("Route")
                    .font(.headline)
                Spacer()
            }
        }
        .padding(.vertical, 10.0)
        .background(Color.red)
        .padding(.horizontal,50)
        
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
