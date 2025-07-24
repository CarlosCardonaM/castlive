//
//  TabBarView.swift
//  CastLive
//
//  Created by Carlos Cardona on 24/07/25.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            LibraryView()
                .tabItem {
                    Label("Library", systemImage: "books.vertical")
                }
            
            CreateShowHomeView()
                .tabItem {
                    Label("Create", systemImage: "plus.circle")
                }
        }
    }
}

#Preview {
    TabBarView()
}
