//
//  MainTabView.swift
//  Took_Talk
//
//  Created by 최시훈 on 3/13/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            FriendView()
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("친구")
                }
                .badge(999)
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("홈")
                }
            ProfileView()
            
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("프로필")
                }
        }
        .navigationBarBackButtonHidden()
        .font(.headline)
        .accentColor(.myOrange)

        
    }
}

#Preview {
    MainTabView()
}
