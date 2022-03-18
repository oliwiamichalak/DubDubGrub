//
//  LocationCell.swift
//  DubDubGrub
//
//  Created by Oliwia Michalak on 18/03/2022.
//

import SwiftUI

struct LocationCell: View {
    var body: some View {
        HStack {
            Image("default-square-asset")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
                .padding(.vertical, 8)
            
            VStack(alignment: .leading) {
                Text("Test Location Name Long")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .lineLimit(1)
                    .minimumScaleFactor(0.75)

                HStack {
                    AvatartView(size: 35)
                    AvatartView(size: 35)
                    AvatartView(size: 35)
                }
            }
            .padding(.leading, 8)
        }
    }
}
