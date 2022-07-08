//
//  LocationMapViewModel.swift
//  DubDubGrub
//
//  Created by Oliwia Michalak on 08/07/2022.
//

import SwiftUI
import MapKit

final class LocationMapViewModel: ObservableObject {
    
    @Published var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.47680774256474, longitude: -3.1796546729978608), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))

    @Published var alertItem: AlertItem?

    func getLocations(for locationManager: LocationManager) {
        CloudKitManager.getLocations { [self] result in
            switch result {
            case .success(let locations):
                locationManager.locations = locations
            case .failure(_):
                alertItem = AlertContext.unableToGetLocations
            }
        }
    }
}
