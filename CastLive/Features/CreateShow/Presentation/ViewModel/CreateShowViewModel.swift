//
//  CreateShowViewModel.swift
//  CastLive
//
//  Created by Carlos Cardona on 24/07/25.
//

import Foundation

import Foundation

class CreateShowViewModel: ObservableObject {
    @Published var showTitle: String = ""
    @Published var description: String = ""
    @Published var selectedHosts: [String] = []

    func reset() {
        showTitle = ""
        description = ""
        selectedHosts = []
    }
}
