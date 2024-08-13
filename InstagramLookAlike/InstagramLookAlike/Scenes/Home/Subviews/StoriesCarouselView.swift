//
//  StoriesCarouselView.swift
//  InstagramLookAlike
//
//  Created by adrian.tipa on 10.07.2024.
//

import SwiftUI

struct StoriesCarouselView: View {
   private let imageURL = "https://picsum.photos/400"
   let range = 14
   
   var body: some View {
      ScrollView(.horizontal, showsIndicators: false) {
         HStack(spacing: 8) {
            ForEach(0..<range, id: \.self) { _ in
               RoundAsyncImage(imageURL: URL(string: imageURL), activeStory: .constant(.random()))
            }
         }
         .frame(height: 100)
      }
   }
}

struct RoundAsyncImage: View {
   let imageURL: URL?
   @Binding var activeStory: Bool
   private let frameWidth: CGFloat = 80
   private let frameHeight: CGFloat = 80
   private let customGradient = LinearGradient(
      gradient: Gradient(colors: [.red, .orange]),
      startPoint: .topLeading,
      endPoint: .bottomTrailing
   )
   
   var body: some View {
      Group {
         if let url = imageURL {
            AsyncImage(url: url) { image in
               image
                  .resizable()
                  .scaledToFit()
                  .clipShape(Circle())
                  .padding(3)
                  .overlay(Circle().stroke(activeStory ? .red : .clear, lineWidth: 2))
            } placeholder: {
               ProgressView()
            }
            .frame(width: frameWidth, height: frameHeight)
         } else {
            Image(systemName: "photo")
               .resizable()
               .scaledToFit()
               .clipShape(Circle())
               .overlay(Circle().stroke(Color.white, lineWidth: 2))
               .frame(width: frameWidth, height: frameHeight)
         }
      }
   }
}

#Preview {
   StoriesCarouselView()
}
