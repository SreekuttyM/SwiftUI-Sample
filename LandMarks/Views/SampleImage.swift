//
//  SampleImage.swift
//  LandMarks
//
//  Created by Sreekutty on 25/07/2021.
//

import SwiftUI

struct SampleImage: View {

    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct SampleImage_Previews: PreviewProvider {
    static var previews: some View {
        SampleImage()
    }
}
