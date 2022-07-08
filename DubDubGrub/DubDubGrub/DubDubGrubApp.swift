//
//  DubDubGrubApp.swift
//  DubDubGrub
//
//  Created by Oliwia Michalak on 18/03/2022.
//

import SwiftUI

@main
struct DubDubGrubApp: App {
    let locationManager = LocationManager()

    var body: some Scene {
        WindowGroup {
            AppTabView()
                .environmentObject(locationManager)
        }
    }
}
