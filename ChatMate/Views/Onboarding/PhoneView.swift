//
//  PhoneView.swift
//  ChatMate
//
//  Created by Veer Singh on 10/3/22.
//

import SwiftUI

struct PhoneView: View {
    
    @Binding var currentStep: CurrentStep
    @State var phoneNumber = ""
    
    var body: some View {
        
        VStack {
            
            Text("Verfication")
                .font(Font.titleText)
                .padding(.top, 32)
            
            Text("Enter your mobile number below. We’ll send you a verification code after.")
                .font(Font.bodyParagraph)
                .padding(.top, 8)
            
            
            // TextField
            ZStack {
                Rectangle()
                    .frame(height: 56)
                    .foregroundColor(Color("input"))
                
                HStack {
                    TextField("e.g. +1 613 515 0123", text: $phoneNumber)
                        .font(Font.bodyParagraph)
                    
                    Spacer()
                    
                    Button {
                        // Clear text field
                        phoneNumber = ""
                    } label: {
                        Image(systemName: "multiply.circle.fill")
                    }
                    .frame(width: 19, height: 19)
                    .tint(Color("icons-input"))
                }
                .padding()
            }
            .padding(.top, 34)
            
            Spacer()
            
            // Continue Button
            Button {
                currentStep = .verfication
            } label: {
                Text("Next")
            }
            .buttonStyle(OnboardingCustomButton())
            
        }
        .padding(.horizontal)
        
    }
}

struct PhoneView_Previews: PreviewProvider {
    static var previews: some View {
        PhoneView(currentStep: .constant(.phone))
    }
}
