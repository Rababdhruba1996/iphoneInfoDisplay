//
//  FanCheckAndControllerView.swift
//  PCCMac
//
//  Created by Apple on 2022/07/21.
//  Copyright © 2022 Nakano. All rights reserved.
//

import SwiftUI
import Firebase
import FirebaseDatabase

class ActiveGoalsViewModel : ObservableObject {
    
    static let shared = ActiveGoalsViewModel()
    private let database = Database.database().reference()
     var infoVal: String! = "Can not display"

    func getChildren(completed:@escaping ()->()) {
        
        var val:String = ""
        database.child("deviceInfo").observeSingleEvent(of: .value) { snapShot in
            if  snapShot != nil {
               let shot = snapShot.value as! [String: Any]
               // print(shot.debugDescription)
                self.infoVal =  shot.values.first as! String ?? "Could not retrive data"
                completed()
            }
        }
        
        }
    }


struct FanCheckAndControllerView: View {
    
    
    
    var body: some View {
      

        VStack  {
            
            VStack {
                Button  {
                            
                        } label: {
                            Text("Check iPHONE")
                            
                        }
                        .frame(width: 310)
                   
                        .customButton(backgroundColor: .gray)
            }

        }.onAppear {
            
            
        }
    }
        }

struct FanCheckAndControllerView_Previews: PreviewProvider {
    static var previews: some View {
        FanCheckAndControllerView()
    }
}


struct CustomButtonStyle: ButtonStyle {
  var foregroundColor: Color
  var backgroundColor: Color
  var pressedColor: Color

  func makeBody(configuration: Self.Configuration) -> some View {
    configuration.label
      .font(.headline)
      .padding(10)
      .foregroundColor(foregroundColor)
      .background(configuration.isPressed ? pressedColor : backgroundColor)
      .cornerRadius(5)
      .frame(width: 310)
  }
}

extension View {
    func customButton(
    foregroundColor: Color = .white,
    backgroundColor: Color = .gray,
    pressedColor: Color = .accentColor
  ) -> some View {
    self.buttonStyle(
      CustomButtonStyle(
        foregroundColor: foregroundColor,
        backgroundColor: backgroundColor,
        pressedColor: pressedColor
      )
    )
  }
}
