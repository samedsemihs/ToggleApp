//
//  OnboardingView.swift
//  RestartApp
//
//  Created by Samed Semih Sürmeli on 2.02.2022.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTY
    @AppStorage("onboarding") var isOnboardingViewActive : Bool = true
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea(.all, edges: .all)
            
            VStack(spacing: 20){
                Spacer()
                
                // MARK: - HEADER
                VStack{
                    
                    Text("Share.")
                        .font(.system(size: 60))
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                    
                    Text("""
                        It's not how much we give but
                        how much love we put into giving.
                        """)
                        .font(.title3)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 10)
                }//: HEADER
                
                // MARK: - CENTER
                ZStack{
                    CircleBackgroundView(ShapeColor: .white, ShapeOpacity: 0.2)
                    
                    Image("character-1")
                        .resizable()
                        .scaledToFit()
                    
                }//: CENTER
                
                Spacer()
                
                // MARK: - FOOTER
                ZStack{
                    Capsule()
                        .fill(.white.opacity(0.2))
                    
                    Capsule()
                        .fill(.white.opacity(0.2))
                        .padding(8)
                    
                    Text("Get Started")
                        .font(.system(.title3, design: .rounded))
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .offset(x: 20)
                    
                    HStack{
                        Capsule()
                            .fill(Color("ColorRed"))
                            .frame(width: 80)
                        Spacer()
                    }
                    
                    HStack {
                        ZStack{
                            Circle()
                                .fill(Color("ColorRed"))
                            Circle()
                                .fill(.black.opacity(0.15))
                                .padding(8)
                            Image(systemName: "chevron.right.2")
                                .font(.system(size: 24, weight: .bold))
                        }
                        .foregroundColor(.white)
                        .frame(width: 80, height: 80, alignment: .center)
                        .onTapGesture {
                            isOnboardingViewActive.toggle()
                        }
                        
                        Spacer()
                    }//: HSTACK
                    
                }//: FOOTER
                .frame(height: 80, alignment: .center)
                .padding()
            } //: VSTACK
        } //: ZSTACK
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
