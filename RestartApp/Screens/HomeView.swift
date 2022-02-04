//
//  HomeView.swift
//  RestartApp
//
//  Created by Samed Semih Sürmeli on 2.02.2022.
//

import SwiftUI

struct HomeView: View {
    // MARK: - PROPERTY
    @AppStorage("onboarding") var isOnboardingViewActive : Bool = false
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            
            VStack(spacing: 20) {
                Spacer()
                
                // MARK: - HEADER
                ZStack {
                    CircleBackgroundView(ShapeColor: .gray, ShapeOpacity: 0.1)
                    
                        Image("character-2")
                            .resizable()
                            .scaledToFit()
                            .padding()
                }
                // MARK: - CENTER
                Text("""
                     The time that leads to mastery is
                     dependent on the intensity of our focus
                     """)
                    .font(.system(.title3))
                    .fontWeight(.light)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .padding()
                
                // MARK: - FOOTER
                Spacer()
                
                ZStack {
                    Button(action: {
                        isOnboardingViewActive.toggle()
                    }){
                        Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                            .imageScale(.large)
                        
                        Text("Restart")
                            .font(.system(.title3))
                            .fontWeight(.bold)
                    }
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.capsule)
                    .controlSize(.large)
                }
                .frame(height: 80, alignment: .center)
                .padding()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
