//
//  ChatRoomConfigView.swift
//  CastLive
//
//  Created by Carlos Cardona on 24/07/25.
//

import SwiftUI

struct ChatRoomConfigView: View {
    @State private var showTitle = ""
    @State private var description = ""
    @State private var invitedCoHosts = ""
    
    var body: some View {
        Form {
            Section(header: Text("Información del episodio")) {
                TextField("Título del show", text: $showTitle)
                TextField("Descripción", text: $description)
            }
            
            Section(header: Text("Invitar co-hosts")) {
                TextField("Emails o usernames", text: $invitedCoHosts)
            }
            
            Section {
                Button("Ir al Lobby") {
                    // Aquí navegará al LiveRoomView en el futuro
                }
                .disabled(showTitle.isEmpty)
            }
        }
        .navigationTitle("Configurar Show")
    }
}

#Preview {
    ChatRoomConfigView()
}
