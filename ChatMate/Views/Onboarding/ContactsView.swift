//
//  ContactsView.swift
//  ChatMate
//
//  Created by Veer Singh on 10/3/22.
//

import SwiftUI

struct ContactsView: View {
    
    @Binding var isOnboarding: Bool
    
    var body: some View {
        
        VStack {
            Spacer()
            
            Image("onboarding-all-set")
            
            Text("Awesome!")
                .font(Font.titleText)
                .padding(.top, 32)
            
            Text("Continue to start chatting with your friends.")
                .font(Font.bodyParagraph)
                .padding(.top, 8)
            
            
            Spacer()
            
            Button {
                // End onboarding
                isOnboarding = false
                
            } label: {
                
                Text("Continue")
                
            }
            .buttonStyle(OnboardingCustomButton())
            .padding(.bottom, 87)

            
        }
        .padding(.horizontal)
        
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView(isOnboarding: .constant(true))
    }
}
