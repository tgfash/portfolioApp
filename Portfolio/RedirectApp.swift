//
//  redirectApp.swift
//  Portfolio
//
//  Created by User on 21/11/2024.
//

import SwiftUI

@main
struct RedirectApp: App {

    @Environment(\.scenePhase) private var scenePhase
    @UIApplicationDelegateAdaptor(MyAppDelegate.self) private var appDelegate

    @StateObject var appRouter = AppRouter.shared

    var body: some Scene {
        WindowGroup {
            switch appRouter.state {
            case .home:
                HomeView()
            }
        }
        .onChange(of: scenePhase) { phase in
            switch phase {
            case .background:
                print("App State : Background")
            case .inactive:
                print("App State : Inactive")
            case .active:
                print("App State : Active")
            @unknown default:
                print("App State : Unknown")
            }
        }
    }
}
