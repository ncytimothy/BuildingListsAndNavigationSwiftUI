//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Tim Ng on 6/10/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkRow : View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image(forSize: 50)
            Text(landmark.name)
        }
    }
}

#if DEBUG // Allows methods like previewLayout to only work in Canvas and not shipment
struct LandmarkRow_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmarkData[0])
        
//        Group {
//            LandmarkRow(landmark: landmarkData[0])
//            LandmarkRow(landmark: landmarkData[1])
//        }
//        .previewLayout(.fixed(width: 300, height: 70))
        
//            .previewLayout(.fixed(width: 300, height: 70)) // to preview the layout
    }
}
#endif
