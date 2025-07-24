//
//  MiniLiveRoomview.swift
//  CastLive
//
//  Created by Carlos Cardona on 24/07/25.
//

import SwiftUI

struct MiniLiveRoomView: View {
    var body: some View {

        VStack {
            HStack {
                Image(systemName: "mic.fill")
                    .foregroundStyle(Color.white)
                Text("Live Podcast in Progress...")
                    .foregroundStyle(Color.white)
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(Color.white)
                }
            }
            .padding()
        }
        .background(Color.black.opacity(0.85))
        .cornerRadius(16)
        .shadow(radius: 5)
        .padding()
    }
}

#Preview {
    MiniLiveRoomView()
}
