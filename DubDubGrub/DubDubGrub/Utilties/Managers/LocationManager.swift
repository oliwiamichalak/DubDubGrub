//
//  LocationManager.swift
//  DubDubGrub
//
//  Created by Oliwia Michalak on 08/07/2022.
//

import Foundation

final class LocationManager: ObservableObject {
    @Published var locations: [DDGLocation] = []
}
