//
//  TopBarView.swift
//  InstagramLookAlike
//
//  Created by adrian.tipa on 10.07.2024.
//

import SwiftUI

struct TopBarView: View {
   @Binding var notifications: Int
   
   var body: some View {
      HStack {
         Text("For you")
            .font(.title.weight(.heavy))
            .foregroundStyle(Color.primaryTextColor)
         Image(systemName: "chevron.down")
            .foregroundStyle(Color.primaryTextColor)
            .font(.system(size: 14))
            .offset(x: -3, y: 3)
         
         Spacer()
         
         HStack(spacing: 20) {
            Image(systemName: "heart")
               .font(.system(size: 20))
               .foregroundStyle(Color.primaryTextColor)
            ZStack {
               Image(systemName: "paperplane")
                  .font(.system(size: 20))
                  .foregroundStyle(Color.primaryTextColor)
               Text(String(notifications))
                  .font(.caption2)
                  .foregroundColor(.white)
                  .padding(4)
                  .background(Circle().fill(Color.red))
                  .offset(x: 10, y: -10)
            }
         }
      }
      .padding()
   }
}

#Preview {
   TopBarView(notifications: .constant(3))
}
