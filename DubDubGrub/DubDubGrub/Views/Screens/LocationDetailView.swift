//
//  LocationDetailView.swift
//  DubDubGrub
//
//  Created by Oliwia Michalak on 18/03/2022.
//

import SwiftUI

struct LocationDetailView: View {
    
    private let columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]

    var body: some View {
        VStack(spacing: 10) {
            BannerImageView(imageName: "default-banner-asset")

            HStack {
                AddressView(address: "123 Main Street")

                Spacer()
            }
            .padding(.horizontal)

            DescriptionView(text: "SuperLong text description here. SuperLong text description here. SuperLong text description here. SuperLong text description here.")

            ZStack {
                Capsule()
                    .frame(height: 80)
                    .foregroundColor(Color(.secondarySystemBackground))
                
                HStack(spacing: 20) {
                    Button {

                    } label: {
                        LocationActionButton(color: .brandPrimary, imageName: "location.fill")
                    }

                    Link(destination: URL(string: "http://apple.co.uk")!) {
                        LocationActionButton(color: .brandPrimary, imageName: "network")
                    }

                    Button {

                    } label: {
                        LocationActionButton(color: .brandPrimary, imageName: "phone.fill")
                    }

                    Button {

                    } label: {
                        LocationActionButton(color: .brandPrimary, imageName: "person.fill.checkmark")
                    }
                }
            }
            .padding(.horizontal)

            Text("Who's here?")
                .bold()
                .font(.title2)

            ScrollView {
                LazyVGrid(columns: columns) {
                    FirstNameAvatarView(firstName: "Oliwia")
                    FirstNameAvatarView(firstName: "Simon")
                    FirstNameAvatarView(firstName: "Kelly")
                    FirstNameAvatarView(firstName: "Oliwia")
                    FirstNameAvatarView(firstName: "Simon")
                    FirstNameAvatarView(firstName: "Kelly")
                    FirstNameAvatarView(firstName: "Oliwia")
                    FirstNameAvatarView(firstName: "Simon")
                    FirstNameAvatarView(firstName: "Kelly")
                }
            }

            Spacer()
        }
        .navigationTitle("Location Name")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LocationDetailView()
        }
    }
}

struct LocationActionButton: View {
    var color: Color
    var imageName: String

    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(color)
                .frame(width: 60, height: 60)
            
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 22, height: 22)
                .foregroundColor(.white)
        }
    }
}

struct FirstNameAvatarView: View {
    var firstName: String

    var body: some View {
        VStack {
            AvatartView(size: 64)

            Text(firstName)
                .bold()
                .lineLimit(1)
                .minimumScaleFactor(0.75)
        }
    }
}

struct BannerImageView: View {
    var imageName: String
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFill()
            .frame(height: 120)
    }
}

struct AddressView: View {
    var address: String
    var body: some View {
        Label(address, systemImage: "mappin.and.ellipse")
            .font(.caption)
            .foregroundColor(.secondary)
    }
}

struct DescriptionView: View {
    var text: String

    var body: some View {
        Text(text)
            .lineLimit(3)
            .minimumScaleFactor(0.75)
            .padding(.horizontal)
            .frame(height: 70)
    }
}