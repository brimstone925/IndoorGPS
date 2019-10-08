//
//  ContentView.swift
//  GPS
//
//  Created by Dylan Smith on 10/1/19.
//  Copyright © 2019 Dylan Smith. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        NavigationView {
        List {
            
            Image("OULOGO")
            .resizable()
            .scaledToFill()
            .frame(height: 400)
            .clipped()
            .listRowInsets(EdgeInsets())
            
            VStack(alignment: .leading) {
                LabelTextField(label: "FROM:", placeHolder: "Fill in the start location")
                LabelTextField(label: "TO:", placeHolder: "Fill in the end location")
                
                RoundedButton().padding(.top, 20)
                }
            .padding(.top, 20)
            .listRowInsets(EdgeInsets())
 
        }
        
        .navigationBarTitle(Text("Indoor GPS"))
        .navigationBarItems(trailing:
            Button(action: {
                
            }, label : {
                Text("Cancel")
            })
        )
 
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

struct RoundedButton : View {
    var body: some View {
        Button(action: {}) {
            HStack {
                Spacer()
                Text("Save")
                    .font(.headline)
                    
                Spacer()
            }
        }
        .padding(.vertical, 10.0)
        
        .padding(.horizontal, 50)
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView().previewLayout(.fixed(width: 375, height: 1000))
            RoundedButton().previewLayout(.sizeThatFits)
        }
    }
}
#endif
}
