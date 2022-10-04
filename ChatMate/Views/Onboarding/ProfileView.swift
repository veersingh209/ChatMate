//
//  ProfileView.swift
//  ChatMate
//
//  Created by Veer Singh on 10/3/22.
//

import SwiftUI

struct ProfileView: View {
    @Binding var currentStep: CurrentStep
    
    @State var firstName = ""
    @State var lastName = ""
    
    var body: some View {
        
        VStack {
            
            Text("Setup your Profile")
                .font(Font.titleText)
                .padding(.top, 52)
            
            Text("Just a few more details to get started")
                .font(Font.bodyParagraph)
                .padding(.top, 12)
            
            Spacer()
            
            // Profile image button
            Button {
                
                // Show action sheet
                
            } label: {
                
                ZStack {
                    
                    Circle()
                        .foregroundColor(Color.white)
                    
                    Circle()
                        .stroke(Color("create-profile-border"), lineWidth: 2)
                    
                    Image(systemName: "camera.fill")
                        .tint(Color("icons-input"))
                    
                }
                .frame(width: 134, height: 134)
                
            }

            Spacer()
            
            // First name
            TextField("Given Name", text: $firstName)
                .textFieldStyle(ProfileTextField())
                  
            // Last name
            TextField("Last Name", text: $firstName)
                .textFieldStyle(ProfileTextField())
            
            Spacer()
            
            Button {
                // Next step
                
                currentStep = .contacts
                
            } label: {
                Text("Next")
            }
            .buttonStyle(OnboardingCustomButton())
            .padding(.bottom, 87)

            
        }
        .padding(.horizontal)
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(currentStep: .constant(.profile))
    }
}
