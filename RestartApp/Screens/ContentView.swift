//
//  ContentView.swift
//  RestartApp
//
//  Created by Samed Semih Sürmeli on 1.02.2022.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isOnboardingViewActive : Bool = false
    
    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
            }else{
                HomeView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
