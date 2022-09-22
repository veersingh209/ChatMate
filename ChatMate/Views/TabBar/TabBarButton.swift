//
//  TabBarButton.swift
//  ChatMate
//
//  Created by Veer Singh on 9/22/22.
//

import SwiftUI

struct TabBarButton: View {
    var isActive: Bool
    
    var image: String
    var text: String
    var size: CGFloat
    
    var body: some View {
        
        GeometryReader { geo in
            
            if isActive {
                Rectangle()
                    .foregroundColor(.blue)
                    .frame(width: geo.size.width/2, height: 4)
                    .padding(.leading, geo.size.width/4)
            }
            
            VStack(alignment: .center) {
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: size, height: size)
                
                Text(text)
                    .font(Font.tabBar)
            }
            .tint(Color("icons-secondary"))
            .frame(width: geo.size.width, height: 82)
        }
        
    }
}

struct TabBarButton_Previews: PreviewProvider {
    static var previews: some View {
        TabBarButton(isActive: true, image: "chat-icon", text: "Chat", size: 24)
    }
}
