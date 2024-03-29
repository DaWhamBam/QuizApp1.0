//
//  ContentView.swift
//  QuizApp
//
//  Created by Martin Hegel on 04.01.24.
//

import SwiftUI
import Firebase

struct ContentView: View {
    var body: some View {
        TabView(selection: $selectedTab) {
            
            HomeView(tab: $selectedTab)
                .tabItem {
                    Label(TabItem.home.title, systemImage: TabItem.home.icon)
                }
                .tag(TabItem.home)
            
            BoardView()
                .tabItem {
                    Label(TabItem.board.title, systemImage: TabItem.board.icon)
                }
                .tag(TabItem.board)
            
            SettingView()
                .tabItem {
                    Label(TabItem.settings.title, systemImage: TabItem.settings.icon)
                }
                .tag(TabItem.settings)
                
        }
        .navigationBarBackButtonHidden(true)
        .environmentObject(categoryViewModel)
        
    }
    
    @State private var selectedTab: TabItem = .home
    @StateObject private var categoryViewModel = CategoryListViewModel()
}

#Preview {
    ContentView()
}
