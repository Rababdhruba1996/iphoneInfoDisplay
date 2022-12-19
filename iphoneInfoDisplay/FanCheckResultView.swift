//
//  FanCheckResultView.swift
//  PCCMac
//
//  Created by Apple on 2022/07/21.
//  Copyright © 2022 Nakano. All rights reserved.
//

import SwiftUI

@available(macOS 11.0, *)
struct FanCheckResultView: View {
    @Binding var info:String
    
      private let adaptiveColumns = [
          GridItem(.adaptive(minimum: 370))
      ]
      
    
      var body: some View {
    
          TextEditor(text:$info)
              }
          
      }
    
    


struct FanCheckResultView_Previews: PreviewProvider {
    static var previews: some View {
        if #available(macOS 11.0, *) {
            FanCheckResultView(info: .constant(""))
        } else {
            // Fallback on earlier versions
        }
    }
}
