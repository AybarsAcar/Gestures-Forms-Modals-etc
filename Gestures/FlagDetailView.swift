//
//  FlagDetailView.swift
//  Gestures
//
//  Created by Aybars Acar on 15/12/21.
//

import SwiftUI


struct FlagDetailView: View {
  
  @Binding var flagViewModel: FlagViewModel
  
  
  var body: some View {
    
    VStack {
      Text(flagViewModel.flag)
        .font(.custom("Arial", size: 200))
      
      TextField("Enter Country Name", text: $flagViewModel.country)
        .padding()
        .fixedSize()
      
      Button("Submit") {
        flagViewModel.isModalDisplayed = false
      }
      .padding()
    }
  
  }
}



struct FlagDetailView_Previews: PreviewProvider {
  static var previews: some View {
    FlagDetailView(flagViewModel: .constant(FlagViewModel()))
  }
}
