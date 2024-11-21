//
//  AppRouter.swift
//  Portfolio
//
//  Created by User on 21/11/2024.
//

import Foundation

class AppRouter: ObservableObject {
    static let shared = AppRouter()
    @Published var state: AppState = .home
}

enum AppState {
    case home
}
