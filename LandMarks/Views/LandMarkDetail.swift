//
//  LandMarkDetail.swift
//  LandMarks
//
//  Created by Sreekutty on 25/07/2021.
//

import SwiftUI

struct LandMarkDetail: View {
    var landmark: LandMark

    var body: some View {
        VStack {
            
            
            MapView()
                .ignoresSafeArea(edges: .top)
            
            landmark.image
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 7)
                .offset(y: -130)
                .padding(.bottom, -130)
            HStack {
                Text(landmark.name)
                    .font(.title)
                Spacer()
            }
            
            HStack {
                Text(landmark.park)
                Spacer()
                Text(landmark.state)
            }
            .font(.subheadline)
            .foregroundColor(.secondary)
            Divider()
            Divider()
            
            HStack {
                Text("About \(landmark.name)")
                    .font(.title2)
                Spacer()
            }
            Text(landmark.description)
        }.padding()
        
    }
}

struct LandMarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkDetail(landmark: landmarks[0])
    }
}
