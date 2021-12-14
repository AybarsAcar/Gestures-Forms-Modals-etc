//
//  Card.swift
//  Gestures
//
//  Created by Aybars Acar on 14/12/21.
//

import SwiftUI


struct Card: View {
  
  let tapped: Bool
  
  @State private var scale: Double = 1
  
  
  var body: some View {
    
    VStack {
      
      Image("puppy")
        .resizable()
        .scaleEffect(scale)
        .scaledToFit()
        .frame(width: 300, height: 300, alignment: .center)
        .gesture(MagnificationGesture()
                  .onChanged({ value in
          scale = value.magnitude
        })
                  .onEnded({ value in
          scale = 1
        }))
      
      
      Text("Card")
        .font(.largeTitle)
        .foregroundColor(.white)
    }
    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
    .background(tapped ? Color.purple : Color.orange)
    .cornerRadius(30)
  }
}



struct Card_Previews: PreviewProvider {
  static var previews: some View {
    Card(tapped: false)
  }
}
