//
//  ContentView.swift
//  Restart
//
//  Created by Leonardo Soares on 27/04/24.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }.animation(.easeOut(duration: 0.5), value: isOnboardingViewActive)
    }
}

#Preview {
    ContentView()
}
