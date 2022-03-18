//
//  DDBButton.swift
//  DubDubGrub
//
//  Created by Oliwia Michalak on 18/03/2022.
//

import SwiftUI

struct DDBButton: View {
    var title: String

    var body: some View {
        Text(title)
            .bold()
            .frame(width: 280, height: 44)
            .background(Color.brandPrimary)
            .foregroundColor(.white)
            .cornerRadius(8)
    }
}

struct DDBButton_Previews: PreviewProvider {
    static var previews: some View {
        DDBButton(title: "Create profile")
    }
}
