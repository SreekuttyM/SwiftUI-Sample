//
//  CombinedView.swift
//  LandMarks
//
//  Created by Sreekutty on 25/07/2021.
//

import SwiftUI
import MapKit

struct CombinedView: View {
    var body: some View {
        
        VStack {
           
            
            MapView()
                            .ignoresSafeArea(edges: .top)
                            
            SampleImage().offset(y: -130)
                            .padding(.bottom, -130)
            HStack {
                Text("Turtle Rock")
                    .font(.title)
                    Spacer()
            }
            
            HStack {
                Text(/*@START_MENU_TOKEN@*/"Joshua tree National Park"/*@END_MENU_TOKEN@*/)
                Spacer()
                Text("California")
            }
            .font(.subheadline)
            .foregroundColor(.secondary)
            Divider()

        }.padding()
            
    }
}

struct CombinedView_Previews: PreviewProvider {
    static var previews: some View {
        CombinedView()
    }
}
