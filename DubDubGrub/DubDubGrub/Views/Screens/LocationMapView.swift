//
//  LocationMapView.swift
//  DubDubGrub
//
//  Created by Oliwia Michalak on 18/03/2022.
//

import SwiftUI
import MapKit

struct LocationMapView: View {

    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.47680774256474, longitude: -3.1796546729978608), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))

    var body: some View {
        ZStack {
            Map(coordinateRegion: $region)
                .ignoresSafeArea()

            VStack {
                LogoView()
                    .shadow(radius: 10)

                Spacer()
            }
        }
        .onAppear {
            CloudKitManager.getLocations { result in
                switch result {
                case .success(let locations):
                    print(locations)
                case .failure(let error):
                    print(error)
                }
            }
        }
    }
}

struct LocationMapView_Previews: PreviewProvider {
    static var previews: some View {
        LocationMapView()
    }
}

struct LogoView: View {
    var body: some View {
        Image("ddg-map-logo")
            .resizable()
            .scaledToFit()
            .frame(height: 70)
    }
}
