//
//  CreateShowHomeView.swift
//  CastLive
//
//  Created by Carlos Cardona on 24/07/25.
//

import SwiftUI

struct CreateShowHomeView: View {
    @State private var navigateToLobby = false

        var body: some View {
            NavigationStack {
                VStack(spacing: 20) {
                    Text("Listo para un nuevo show en vivo?")
                        .font(.title2)
                        .multilineTextAlignment(.center)

                    Button("Crear nuevo episodio") {
                        navigateToLobby = true
                    }
                    .buttonStyle(.borderedProminent)
                }
                .navigationTitle("Create Show")
                .navigationDestination(isPresented: $navigateToLobby) {
                    ChatRoomConfigView()
                }
            }
        }
}

#Preview {
    CreateShowHomeView()
}
