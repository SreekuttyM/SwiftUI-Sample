//
//  LandMark.swift
//  LandMarks
//
//  Created by Sreekutty on 25/07/2021.
//


import Foundation
import SwiftUI
import CoreLocation

// MARK: - WelcomeElement
struct LandMark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String

    private var imageName: String
    var image: Image {
        Image(imageName)
    }

    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}


