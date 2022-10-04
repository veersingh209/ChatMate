//
//  OnBoardingContainerView.swift
//  ChatMate
//
//  Created by Veer Singh on 10/3/22.
//

import SwiftUI

enum CurrentStep: Int {
    
    case welcome = 0
    case phone = 1
    case verfication = 2
    case profile = 3
    case contacts = 4
    
}

struct OnBoardingContainerView: View {
    @Binding var isOnboarding: Bool
    @State var currentStep: CurrentStep = .welcome
    
    var body: some View {
        
        ZStack {
            
            Color("background")
                .ignoresSafeArea(edges: [.top, .bottom])
            
            switch currentStep {
            case .welcome:
                WelcomeView(currentStep: $currentStep)
            case .phone:
                PhoneView(currentStep: $currentStep)
            case .verfication:
                VerificationView(currentStep: $currentStep)
            case .profile:
                ProfileView(currentStep: $currentStep)
            case .contacts:
                ContactsView(isOnboarding: $isOnboarding)
            }
            
        }
        
    }
}

struct OnBoardingContainerView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingContainerView(isOnboarding: .constant(true))
    }
}
