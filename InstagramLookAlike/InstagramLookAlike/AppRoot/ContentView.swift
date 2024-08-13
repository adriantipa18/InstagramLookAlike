//
//  ContentView.swift
//  InstagramLookAlike
//
//  Created by adrian.tipa on 10.07.2024.
//

import SwiftUI

struct ContentView: View {
   var body: some View {
      TabView {
         ForEach(TabItem.allCases, id: \.self) { item in
            createTabView(for: item)
         }
      }
   }
   
   func createTabView(for item: TabItem) -> some View {
      let view: AnyView
      
      switch item {
      case .home:
         view = AnyView(HomeView())
      case .search:
         view = AnyView(Text("Search"))
      case .add:
         view = AnyView(Text("Add"))
      case .reels:
         view = AnyView(Text("Reels"))
      case .profile:
         view = AnyView(Text("Profile"))
      }
      
      return view.tabItem {
         Image(systemName: item.rawValue)
         Text(item.title)
      }
   }
}

#Preview {
   ContentView()
}
