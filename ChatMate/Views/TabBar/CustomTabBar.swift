//
//  CustomTabBar.swift
//  ChatMate
//
//  Created by Veer Singh on 9/22/22.
//

import SwiftUI

enum TabSelection: Int {
    case chat = 1
    case contacts = 2
    
}

struct CustomTabBar: View {
    @Binding var selection: TabSelection
    
    var body: some View {
        
        HStack(alignment: .center) {
            
            // Chat Button
            Button {
                selection = .chat
            } label: {
                TabBarButton(isActive: selection == .chat, image: "chat-icon", text: "Chat", size: 24)
            }

            
            // New Chat button
            Button {
                selection = .chat
            } label: {
                TabBarButton(isActive: false, image: "new-chat-icon", text: "New Chat", size: 32)
            }
            
            // Contacts button
            Button {
                selection = .contacts
            } label: {
                TabBarButton(isActive: selection == .contacts, image: "contacts-icon", text: "Contants", size: 24)
            }
            
            
        }
        .frame(height: 82)
        
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar(selection: .constant(.contacts))
    }
}
