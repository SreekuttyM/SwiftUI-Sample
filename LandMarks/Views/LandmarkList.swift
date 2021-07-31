//
//  LandmarkList.swift
//  LandMarks
//
//  Created by Sreekutty on 25/07/2021.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            VStack {
                List(landmarks) { landmark in
                    NavigationLink(destination: LandMarkDetail(landmark: landmark)) {
                        LandmarkRow(landMark: landmark)
                    }
                }
            }
        }.navigationTitle("Landmarks")
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
