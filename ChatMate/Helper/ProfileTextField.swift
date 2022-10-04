//
//  ProfileTextField.swift
//  ChatMate
//
//  Created by Veer Singh on 10/3/22.
//

import SwiftUI

struct ProfileTextField: TextFieldStyle {
    
    func _body(configuration: TextField<Self._Label>) -> some View {
        
        ZStack {
            Rectangle()
                .foregroundColor(Color("input"))
                .cornerRadius(8)
                .frame(height: 46)
            
            // This references the textfield
            configuration
                .font(Font.tabBar)
                .padding()
        }
        
        
    }
}
