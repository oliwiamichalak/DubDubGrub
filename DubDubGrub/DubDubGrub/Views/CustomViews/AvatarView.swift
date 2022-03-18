//
//  AvatarView.swift
//  DubDubGrub
//
//  Created by Oliwia Michalak on 18/03/2022.
//

import SwiftUI

struct AvatartView: View {
    var size: CGFloat

    var body: some View {
        Image("default-avatar")
            .resizable()
            .scaledToFit()
            .frame(width: size, height: size)
            .clipShape(Circle())
    }
}
