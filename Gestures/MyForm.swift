//
//  MyForm.swift
//  Gestures
//
//  Created by Aybars Acar on 14/12/21.
//

import SwiftUI


struct MyForm: View {
  
  @State private var isScheduled: Bool = false
  @State private var isManuallyEnabledUntilTomorrow: Bool = false
  @State private var colorTemperature: CGFloat = 0.5
  
  var body: some View {
    
    NavigationView {
      
      Form {
        
        Section(
          header: Text("Night shift automatically shift colors. To activate please enable the following property")
            .padding(5)
            .lineLimit(nil)
        ) {
          
          Toggle(isOn: $isScheduled) {
            Text("Scheduled")
          }
          
          HStack {
            VStack(alignment: .leading) {
              Text("From")
              Text("To")
            }
            
            Spacer()
            
            NavigationLink(destination: Text("Scheduled Settings")) {
              VStack(alignment: .trailing) {
                Text("Sunset")
                Text("Sunrise")
              }
              .foregroundColor(.blue)
            }
            .fixedSize()
          }
        }
        
        Section(header: Text("")) {
          Toggle(isOn: $isManuallyEnabledUntilTomorrow) {
            Text("Manually Enable Until Tomorrow")
          }
        }
        
        Section(header: Text("Color Temperature")) {
          HStack {
            Text("Less Warm")
            Spacer()
            Text("More Warm")
          }
          Slider(value: $colorTemperature)
        }
        
      }
      
    }
  }
}



struct MyForm_Previews: PreviewProvider {
  static var previews: some View {
    MyForm()
  }
}
