//
//  TabBarItems.swift
//  InstagramLookAlike
//
//  Created by adrian.tipa on 10.07.2024.
//

import Foundation

enum TabItem: String, CaseIterable {
   case home = "house.fill"
   case search = "magnifyingglass"
   case add = "plus.app.fill"
   case reels = "play.rectangle.fill"
   case profile = "person.circle.fill"
   
   var title: String {
      switch self {
      case .home:
         return "Home"
      case .search:
         return "Search"
      case .add:
         return "Add"
      case .reels:
         return "Reels"
      case .profile:
         return "Profile"
      }
   }
}
