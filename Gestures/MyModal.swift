//
//  MyModal.swift
//  Gestures
//
//  Created by Aybars Acar on 14/12/21.
//

import SwiftUI


struct MyModal: View {
  
  let flags = ["🇦🇽", "🇦🇱", "🇦🇺", "🇨🇳", "🇨🇦", "🇹🇷"]
  
  @State private var flagViewModel: FlagViewModel = FlagViewModel()
  
  var body: some View {
  
    List {
      
      Text(flagViewModel.country)
        .font(.title2)
     
      ForEach(0..<flags.count, id: \.self) { index in
        HStack {
          Text(flags[index])
            .font(.custom("Arial", size: 100))
        
          Spacer()
          Text("Flag \(index)")
            .font(.footnote)
            .foregroundColor(.secondary)
        }
        .onTapGesture {
          flagViewModel.flag = flags[index]
          flagViewModel.isModalDisplayed.toggle()
        }
      }
      
    }
    .sheet(isPresented: $flagViewModel.isModalDisplayed, onDismiss: {
      flagViewModel.isModalDisplayed = false
    }) {
      FlagDetailView(flagViewModel: $flagViewModel)
    }
  }
}



struct MyModal_Previews: PreviewProvider {
  static var previews: some View {
    MyModal()
  }
}
