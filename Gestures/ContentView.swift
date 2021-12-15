//
//  ContentView.swift
//  Gestures
//
//  Created by Aybars Acar on 14/12/21.
//

import SwiftUI


struct ContentView: View {
  
  @State private var tapped: Bool = false
  @State private var dragState: CGSize = .zero
  @State private var rotation: Double = 0
  
  
  var body: some View {
    
    VStack {
      MyModal()
    
    
    Card(tapped: tapped)
      .animation(.spring())
      .offset(y: dragState.height)
      .rotationEffect(Angle(degrees: rotation))
      .gesture(RotationGesture()
                .onChanged({ angle in
        rotation = angle.degrees
      })
                .onEnded({ _ in
        rotation = 0
      }))
      .gesture(DragGesture()
                .onChanged({ value in
        dragState = value.translation
      })
                .onEnded({ value in
        dragState = .zero
      }))
    
      .gesture(TapGesture(count: 1)
                .onEnded({ _ in
        tapped.toggle()
      }))
    }
  }
}



struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
