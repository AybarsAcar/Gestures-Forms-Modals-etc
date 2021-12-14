//
//  NotificationForm.swift
//  Gestures
//
//  Created by Aybars Acar on 14/12/21.
//

import SwiftUI


struct NotificationForm: View {
  var body: some View {
    
    NavigationView {
      Form {
        
        Section(header: Text("")) {
          HStack {
            Text("Show Previews")
            Spacer()
            NavigationLink(destination: Text("Nav")) {
              Text("Always")
            }
            .fixedSize()
            .foregroundColor(.secondary)
          }
        }
        
        Section(header: Text("Notification previews will be shown whetehr the iPhone is locked or unlocked")) {
          NavigationLink(destination: Text("Siri Suggestions")) {
            Text("Siri Suggestions")
          }
        }
        
        Section(header: VStack(alignment: .leading) {
          Text("Choose while apps can suppest shortcuts on the lock screen")
          Text("Notification Style").padding(.top)
        }) {
          ForEach(1...10, id: \.self) { index in
            Text("\(index)")
          }
        }
      }
      .navigationBarTitle("Notifications", displayMode: .inline)
    }
    
  }
}



struct NotificationForm_Previews: PreviewProvider {
  static var previews: some View {
    NotificationForm()
  }
}
