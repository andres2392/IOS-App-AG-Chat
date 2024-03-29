//
//  customNavBarView.swift
//  AGChat
//
//  Created by PDWS on 9/15/22.
//

import SwiftUI

private var customNavBar: some View {
    HStack(spacing: 16) {

        Image(systemName: "person.fill")
            .font(.system(size: 34, weight: .heavy))

        VStack(alignment: .leading, spacing: 4) {
            Text("USERNAME")
                .font(.system(size: 24, weight: .bold))

            HStack {
                Circle()
                    .foregroundColor(.green)
                    .frame(width: 14, height: 14)
                Text("online")
                    .font(.system(size: 12))
                    .foregroundColor(Color(.lightGray))
            }

        }

        Spacer()
        Button {
            shouldShowLogOutOptions.toggle()
        } label: {
            Image(systemName: "gear")
                .font(.system(size: 24, weight: .bold))
                .foregroundColor(Color(.label))
        }
    }
    .padding()
    .actionSheet(isPresented: $shouldShowLogOutOptions) {
        .init(title: Text("Settings"), message: Text("What do you want to do?"), buttons: [
            .destructive(Text("Sign Out"), action: {
                print("handle sign out")
            }),
                .cancel()
        ])
    }
}


