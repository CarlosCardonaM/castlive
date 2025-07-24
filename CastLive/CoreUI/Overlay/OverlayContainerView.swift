//
//  OverlayContainerView.swift
//  CastLive
//
//  Created by Carlos Cardona on 24/07/25.
//

import SwiftUI

struct OverlayContainerView: View {
    @State private var showMiniPlayer: Bool = true

       var body: some View {
           ZStack(alignment: .bottom) {
               TabBarView()

               if showMiniPlayer {
                   VStack {
                       Spacer()
                       MiniLiveRoomView()
                           .padding(.horizontal)
                           .padding(.bottom, 45) // Ajusta este valor según el alto de tu TabBar
                           .transition(.move(edge: .bottom))
                           .animation(.easeInOut, value: showMiniPlayer)
                   }
                   .allowsHitTesting(false) // opcional, dependiendo del diseño
               }
           }
           .ignoresSafeArea(.keyboard, edges: .bottom) // Permite que no se rompa con el teclado
       }
}

#Preview {
    OverlayContainerView()
}
