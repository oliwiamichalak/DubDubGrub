//
//  AlertItem.swift
//  DubDubGrub
//
//  Created by Oliwia Michalak on 08/07/2022.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {

    // MARK: MapView Errors
    static let unableToGetLocations = AlertItem(title: Text("Locations error"),
                                            message: Text("Unable to retrive Locations. \nPlease, try again"),
                                            dismissButton: .default(Text("OK")))
    
}
