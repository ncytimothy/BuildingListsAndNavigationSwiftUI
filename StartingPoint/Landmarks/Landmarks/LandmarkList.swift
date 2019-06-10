//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Tim Ng on 6/10/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkList : View {
    
    // You can create a list that displays the elements of collection by passing your collection of data and a closure that provides a view for each element in the collection. The list transforms each element in the collection into a child view by using the supplied closure.
    
    // Lists work with identifiable data. You can make your data identifiable in one of two ways: by calling the identified(by:) method with a key path to a property that uniquely identifies each element, or by making your data type conform to the Identifiable protocol.
    
    // You add navigation capabilities to a list by embedding it in a NavigationView, and then nesting each row in a NavigationButton to set up a transtition to a destination view.
    
    var body: some View {
//        List(landmarkData.identified(by: \.id)) { landmark in
//            LandmarkRow(landmark: landmark)
//        }
        NavigationView {
            List(landmarkData) { landmark in
                NavigationButton(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
        }
        .navigationBarTitle(Text("Landmarks"))
        
    }
}

#if DEBUG
struct LandmarkList_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkList()
        
//        ForEach(["iPhone SE", "iPhone XS Max"].identified(by: \.self)) { deviceName in
//            LandmarkList()
//                .previewDevice(PreviewDevice(rawValue: deviceName))
//        }
        
        // ForEach operates on collections the same way as the list, which means you can use it anywhere you can use a child view, such as in stacks, lists, groups, and more. When the elements of your data are simple value types — like the strings you’re using here — you can use \.self as key path to the identifier.
        
    }
}
#endif
