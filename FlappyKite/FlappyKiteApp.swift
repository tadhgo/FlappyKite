//
//  FlappyKiteApp.swift
//  FlappyKite
//
//  Created by Mark Wolfe on 26/9/2024.
//

import SwiftUI
import SwiftData
import Sentry

@main
struct FlappyKiteApp: App {
    init() {
        
        guard let infoDictionary: [String: Any] = Bundle.main.infoDictionary else { return }
        guard let sentryDSN: String = infoDictionary["SentryDSN"] as? String else { return }
        print("Here's your api key value -> \(sentryDSN)")
        
        SentrySDK.start { options in
            options.dsn = sentryDSN
            options.debug = true // Enabled debug when first installing is always helpful

            // Enable tracing to capture 100% of transactions for tracing.
            // Use 'options.tracesSampleRate' to set the sampling rate.
            // We recommend setting a sample rate in production.
            options.tracesSampleRate = 1.0
        }
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
        }
        .modelContainer(sharedModelContainer)
    }
}
