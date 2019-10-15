//
//  image.swift
//  GPS_NEW
//
//  Created by Dylan Smith on 10/9/19.
//  Copyright © 2019 Dylan Smith. All rights reserved.
//

import SwiftUI

struct image: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
    }
}

struct image_Previews: PreviewProvider {
    static var previews: some View {
        image(image: Image("stocker"))
    }
}
