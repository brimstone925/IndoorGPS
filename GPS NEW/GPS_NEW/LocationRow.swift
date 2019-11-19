//
//  locationrow.swift
//  GPS_NEW
//
//  Created by Dylan Smith on 10/9/19.
//  Copyright © 2019 Dylan Smith. All rights reserved.
//

import SwiftUI

struct LocationRow: View {
   var location: Location

        var body: some View {
            HStack {
                location.image
                    .resizable()
                    .frame(width: 50, height: 50)
                Text(verbatim: location.number)
                Spacer()
            }
        }
    }

    struct LandmarkRow_Previews: PreviewProvider {
        static var previews: some View {
            Group {
                LocationRow(location: locationData[0])
                LocationRow(location: locationData[1])
            }
            .previewLayout(.fixed(width: 300, height: 70))
        }
    }
