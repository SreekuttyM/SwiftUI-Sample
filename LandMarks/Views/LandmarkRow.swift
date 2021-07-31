//
//  LandmarkRow.swift
//  LandMarks
//
//  Created by Sreekutty on 25/07/2021.
//

import SwiftUI

struct LandmarkRow: View {
    var landMark : LandMark
    var body: some View {
        HStack {
            HStack {
                landMark.image
                    .resizable().frame(width: 50.0, height: 50.0)
                Text(landMark.name)
                    .font(.body)
                Spacer()
            }.padding()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landMark: landmarks[6])
    }
}
