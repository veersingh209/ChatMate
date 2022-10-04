//
//  StartView.swift
//  ChatMate
//
//  Created by Veer Singh on 9/22/22.
//

import SwiftUI

struct StartView: View {
    @State var currentTabSelection:TabSelection = .contacts
    @State var isOnboarding = !AuthViewModel.isUserLoggedIn()
    
    var body: some View {
        
        VStack {
            Spacer()
            
            CustomTabBar(selection: $currentTabSelection)
        }
        // Onboarding sequence
        .fullScreenCover(isPresented: $isOnboarding) {
        } content: {
            OnBoardingContainerView(isOnboarding: $isOnboarding)
        }

    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
