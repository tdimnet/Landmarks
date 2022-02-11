//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by family on 11/02/2022.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmakrs[0])
            LandmarkRow(landmark: landmakrs[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
