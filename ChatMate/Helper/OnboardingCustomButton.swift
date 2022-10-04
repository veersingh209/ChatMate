//
//  OnboardingCustomButton.swift
//  ChatMate
//
//  Created by Veer Singh on 10/3/22.
//

import SwiftUI

struct OnboardingCustomButton: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            
            Rectangle()
                .frame(height: 50)
                .cornerRadius(4)
                .foregroundColor(Color("button-primary"))
            
            configuration.label
                .font(Font.button)
                .foregroundColor(Color("text-button"))
            
        }
    }
    
}
