//
//  iOSInfoCheckView.swift
//  iphoneInfoDisplay
//
//  Created by UXD on 2022/11/13.
//



import SwiftUI
import Firebase
struct FanCheckView: View {
    @State var infoToDisplay: String = "Why"
    var body: some View {
        NavigationView {
            FanCheckAndControllerView()
            if #available(macOS 11.0, *) {

                FanCheckResultView(info: $infoToDisplay)
            } else {
                // Fallback on earlier versions
            }
        }
        .frame(width: 1200.00, height:800.00)
        .onAppear{
            FirebaseApp.configure()
            ActiveGoalsViewModel.shared.getChildren {
                infoToDisplay = ActiveGoalsViewModel.shared.infoVal
            }
            //print("printing values: \n",info.debugDescription)
            
            print(infoToDisplay)
        }
        
        
        
    }
        
}

struct FanCheckView_Previews: PreviewProvider {
    static var previews: some View {
        FanCheckView()
    }
}
