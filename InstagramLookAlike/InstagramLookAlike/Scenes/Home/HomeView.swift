//
//  HomeView.swift
//  InstagramLookAlike
//
//  Created by adrian.tipa on 10.07.2024.
//

import SwiftUI

struct HomeView: View {
   @State var notifications: Int = 0
   
    var body: some View {
       VStack(alignment: .center, spacing: .zero) {
          TopBarView(notifications: $notifications)
          StoriesCarouselView()
          Spacer()
       }
    }
}

#Preview {
    HomeView()
}
