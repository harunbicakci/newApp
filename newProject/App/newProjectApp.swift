//
//  newProjectApp.swift
//  newProject
//
//  Created by Harun Bicakci on 7/13/24.
//

import SwiftUI
import SwiftData
import Firebase

@main
struct newProjectApp: App {
    @StateObject var viewModel = AuthViewModel()
    
    init(){ // configure Firebase 
        FirebaseApp.configure()
    }
    
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
        .modelContainer(sharedModelContainer)
    }
}
