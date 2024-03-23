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
                          Image(systemName: "1.square.fill")
                          Text("First")
                        }
            HomeView()
                .tabItem {
                          Image(systemName: "1.square.fill")
                          Text("First")
                        }
            ProfileView()
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("First")
                  }
                .badge(10)

            
        }  
        .navigationBarBackButtonHidden()
        .font(.headline)

    }
}

