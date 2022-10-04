//
//  WelcomeView.swift
//  ChatMate
//
//  Created by Veer Singh on 10/3/22.
//

import SwiftUI

struct WelcomeView: View {
    
    @Binding var currentStep: CurrentStep
    
    var body: some View {
        
        VStack {
            Spacer()
            
            Image("onboarding-welcome")
                .resizable()
                .scaledToFit()
            
            Text("Welcome to ChatMate")
                .font(Font.titleText)
                .padding(.top, 32)
            
            Text("Simple and fuss-free chat experience")
                .font(Font.bodyParagraph)
                .padding(.top, 8)
            
            Spacer()
            
            // Continue Button
            Button {
                currentStep = .phone
            } label: {
                Text("Get Started")
            }
            .buttonStyle(OnboardingCustomButton())
            
            
            Text("By tapping ‘Continue’, you agree to our Privacy Policy.")
                .font(Font.smallText)
                .padding(.top, 14)
                .padding(.bottom, 61)
        }
        .padding(.horizontal)
        
    }
}

struct WelcomeVIew_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView(currentStep: .constant(.welcome))
    }
}
